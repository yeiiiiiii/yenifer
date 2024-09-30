
Funcion opciones <- menu 
	Escribir ''
	Escribir '________Menu de opciones________'
	Escribir ''
	Escribir '1. Registrar estudiantes '
	Escribir '2. Asignar notas parciales (3)'
	Escribir '3. Registrar numeros de asistencias'
	Escribir '4. Mostrar lista de estudiantes'
	Escribir '5. Ver nota final'
	Escribir ''
	Escribir 'Por favor escoge uno'
	leer opciones
Fin Funcion

Funcion Estudiante <- Registro ( codigo, nombre )
	
	Escribir 'Por ingresar la cantidad de estudiantes que va a registrar (1 al 10)'
	leer cant
	
	Si (cant>0) Y (cant<=10) Entonces
		
		Para i=1 Hasta cant Con Paso 1 Hacer
			
			Escribir 'Ingrese el codigo del estudiante ', i
			leer codigo
			Escribir 'Ingresa el nombre del Estudiante ',i 
			leer nombre
		Fin Para
	SiNo
		Escribir 'Ingrese un valor valido de 1 a 10'
	FinSi
	
Fin Funcion

Funcion Asignar <- Notas_parcial ( nota )
	Escribir 'Indiqueme las (3) notas parciales'
	leer nota1
	leer nota2
	leer nota3
	
Fin Funcion

Funcion Registrar <- Inasistencia ( nombre, codigo)
	
	escribir 'Por favor indiqueme las inasistencia'
	leer inasiste
	
Fin Funcion

Funcion Muestra <- Lista_estudiantes ( nombre, codigo )
	
		Para i<-0 Hasta i Con Paso 1 Hacer
			Escribir 'nombre del estudiante: ' //no supe cual es el error
			escribir 'Codigo del estudiante: ' //no supe cual es el error
		FinPara
Fin Funcion

Funcion Ver <- nota_final (Inasisten, notafinal ,nombre,codigo, nota)
	Escribir 'Muestra del listado de estudiantes'
	Escribir 'Codigo  /  nombre  /  parc1  /  parc2  /  parc3  /  inasistencia  /  notafinal'  
	
	para j<-1 Hasta 10 Con Paso 1 Hacer
		
		notafinal(j) = (nota(1,j) + nota(2,j) + nota(3,j))/3
		
	FinPara
	Para l<- 1 Hasta 10 Con Paso 1 Hacer
		si (Inasisten(l) >= 10) y (Inasisten(l) <15)Entonces
			
			notafinal(l)= (notafinal(l)-0.5)
			
		SiNo
			notafinal(l)= (notafinal (l)-1 )
		FinSi
	Fin Para
	
	
Fin Funcion

Algoritmo notas
	
	Repetir
		
	opc<-menu
	
	Segun opc Hacer
		1:
			Estudiante <- Registro ( codigo, nombre)
		2:
			Asignar <- Notas_parcial (nota)
		3:
			Registrar <- Inasistencia (nombre, codigo)
		4:
			Muestra <- Lista_estudiantes ( nombre, codigo )
		5: 
			Ver <- nota_final (Inasisten, notafinal ,nombre,codigo, nota)
			
	Fin Segun
	Escribir ''
	Escribir 'Si desea continuar precione (3) si no quiere continuar precione (9)'
	leer opc
	si opc=9 Entonces
		Escribir 'Saliendo...'
	FinSi
Hasta Que opc=9
FinAlgoritmo












