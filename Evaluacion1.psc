algoritmo MenuCompleto
    definir opcion como entero
    definir a1, d, an, Sn como real
    definir a, b Como real
    definir continuar como caracter
	
    Repetir
        escribir "Menú Principal:"
        escribir "1. Resolver una P.A."
        escribir "2. Resolver una integral definida"
        escribir "3. Calcular las soluciones de una ecuación cuadrática"
        escribir "4. Cerrar programa"
        escribir "Ingrese el número de la opción deseada: "
        leer opcion
		
        segun opcion hacer
            1:
				escribir "1. Resolver una Progresión Aritmetica: "
                repetir
                    escribir "Ingrese el primer término (a1) de la P.A.: "
                    leer a1
                    escribir "Ingrese la diferencia (d) de la P.A. (debe ser un número entero): "
                    leer d
					
                    // Validar que la diferencia es un número entero
                    si d <> TRUNC(d) entonces
                        escribir "La diferencia (d) debe ser un número entero. Intente nuevamente."
                    sino
						escribir "La expresión algebraica de la P.A. es: a_n = ", a1, " + (n - 1) * ", d
                        escribir "Ingrese el número de términos (n) de la P.A. (debe ser mayor que 3 y natural): "
                        leer n
						
                        // Validar que n es mayor que 3
                        mientras n <= 3 hacer
                            escribir "El número de términos (n) debe ser mayor que 3. Intente nuevamente: "
                            leer n
                        finmientras
						
                        // Calcular el término an y la suma Sn
                        an <- a1 + (n - 1) * d
                        sn <- ((a1 + an)* n ) / 2
						
                        // Mostrar resultados
                        
                        escribir "El término a_n para n = ", n, " es: ", an
                        escribir "La suma s_n es: ", Sn
						
                        escribir "¿Desea continuar con esta opción? (S/N): "
                        leer continuar
                    finsi
                hasta que continuar <> "S" Y continuar <> "s"
				
			2:
				escribir "Resolver una Integral Definida: "
                escribir "             b"
				escribir "            /      1"
				escribir " f(x) =    /   --------- dx"
				escribir "          /       x-2"
				escribir "         a"
				
				escribir "Ingrese el término a (este debe ser menor que b): "
				leer a
				escribir "Ingrese el termino b (este debe ser mayor que a) : "
                leer b
				// Validar que la diferencia es un número entero
				si b <= a entonces
					escribir "El primer numero a es mayor que b, favor ingresar nuevamente"
					
				sino
					
					absolutoA <- abs(b - 2)
					absolutoB <- abs(a - 2)
					id <- ln(absolutoA) - ln(absolutoB)
					
					escribir "El resultado de la Integral Definida es: ", id
					
				finsi 	
            3:				
				// Se piden los coeficientes de la ecuación cuadrática
				Escribir "Resolución de una ecuación cuadrática de la forma ax^2 + bx + c = 0"
				Escribir "Ingrese el valor de a: "
				Leer a
				Escribir "Ingrese el valor de b: "
				Leer b
				Escribir "Ingrese el valor de c: "
				Leer c
				
				// Se calcula el discriminante
				discriminante <- b^2 - 4 * a * c
				
				// Se evalúa si el discriminante es positivo, negativo o cero
				Si discriminante > 0 Entonces
					// Dos soluciones reales y diferentes
					x1 <- (-b + raiz(discriminante)) / (2 * a)
					x2 <- (-b - raiz(discriminante)) / (2 * a)
					Escribir "La ecuación tiene dos soluciones reales: "
					Escribir "x1 = ", x1
					Escribir "x2 = ", x2
				SiNo
					Si discriminante = 0 Entonces
						// Una solución real
						x1 <- -b / (2 * a)
						Escribir "La ecuación tiene una única solución real: "
						Escribir "x = ", x1
					SiNo
						// Soluciones complejas
						Escribir "La ecuación tiene soluciones complejas."
					FinSi
				FinSi
				
			4:
				escribir "Nos vemos!!" 
				
			de otro modo:
				escribir "Opción no válida"
				
        FinSegun
	Hasta Que opcion = 4
FinProceso
