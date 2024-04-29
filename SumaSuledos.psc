Algoritmo sin_titulo
	imprimir "Dime la cantidad de sueldos que insertaras"
	leer x
	d<-1
	Dimension Vector[x]
	Mientras d<=x Hacer
		imprimir "dame los sueldos de tus trabajadores " d
		leer Vector[d]
		d<-d+1
	FinMientras
	
	r<-1
	a<-0
	suma<-0
	imprimir "Los sueldos seran: "
	Repetir
		si Vector[r]>2500 Entonces
			imprimir "El suledo numero " r " es: " Vector[r]
			suma <- suma + Vector[r]
		FinSi
			r<-r+1
		a<-a+1
	Hasta Que a=x
	Imprimir "El total acumulado de los sueldos es: " suma
FinAlgoritmo
