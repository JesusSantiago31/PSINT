Algoritmo sin_titulo
	imprimir "Dime la cantidad de edades que insertaras"
	leer x
	d<-1
	Dimension Vector[x]
	Mientras d<=x Hacer
		imprimir "dame las edades de tus trabajadores " d
		leer Vector[d]
		d<-d+1
	FinMientras
	
	r<-1
	a<-0
	
	imprimir "Las edades filtradas son: "
	Repetir
		si Vector[r]<18 Entonces
			imprimir Vector[r]
		FinSi
		r<-r+1
		a<-a+1
Hasta Que a=x
FinAlgoritmo
