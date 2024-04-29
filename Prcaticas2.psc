Algoritmo sin_titulo
	Imprimir "	Datos acerca del trabajador: "
	Imprimir "----------------------------------"
	Imprimir "Ingresa el nombre del trabajador."
	Leer Nombre
	Imprimir "Ingresa los Apellidos del trabjador"
	Leer Apellidos
	Imprimir Nombre ", Ingresa la direccion."
	Leer Direccion 
	Imprimir Nombre ", Ingresa el puesto"
	Leer Puesto 
	Imprimir  Nombre ", Ingresa el sueldo semanal" 
	Leer SueldoSemanal
	Imprimir "¿Cuantos dias de la semana trabajó?"
	Leer DiasTrabajados
	Imprimir Nombre ", ¿Cuantos horas extra trabajó?"
	Leer HorasExtra
	
	// Sacar el salario por HorasExtra
	Imprimir "-----------------------------------------------------------------"
	
	SueldoDia <- SueldoSemanal / 6
	SueldoHora <- SueldoDia / 8
	
	//Dtaos generales
	Imprimir "	Datos generales:"
	Imprimir "----------------------"
	Imprimir "Nombre del Trabajador:  " Nombre
	Imprimir "Sueldo Diario:  " SueldoDia
	Imprimir "Sueldo por Hora " SueldoHora 
	Imprimir "-----------------------------------------------------------------"
	
	// A) Las primeras 8 horas extras pagarlas al doble y las subsecuentes al triple
	Imprimir "	Total de Horas Trabajadas: " 
	Imprimir "------------------------------"
	SueldoExtra <- 0
	si (HorasExtra>0) Entonces
		si (HorasExtra<=8) Entonces
			Imprimir "El trabajador (" Nombre ") Recibirá una paga doble por trabajar MENOS de 8 horas extra."
			
			SueldoHora <- SueldoHora * 2
			SueldoDef <- SueldoHora * HorasExtra
			
			//  B) Mostrar el total a pagar de horas extra
			Imprimir "-El trabajador (" Nombre ") Trabajó (" HorasExtra ") horas extra."
			Imprimir "--El sueldo a pagar es de ($" SueldoDef ") extra por trabajar MENOS de 8 horas."
			
		SiNo
			Imprimir "El trabajador (" Nombre ") Recibirá una paga triple por trabajar MAS de 8 horas extra."
			
			HorasNuevas <- HorasExtra-8
			SueldoDoble <- 16 * SueldoHora
			SueldoTriple1 <- HorasNuevas *3
			SueldoTriple2 <- SueldoTriple1 * SueldoHora
			SueldoDef <- SueldoDoble + SueldoTriple2
			
			//  B) Mostrar el total a pagar de horas extra
			Imprimir "-El trabajador (" Nombre ") Trabajó (" HorasExtra ") horas extra."
			Imprimir "--El sueldo a pagar es de ($" SueldoDef ") extra por trabajar MAS de 8 horas."
			
		FinSi
	SiNo
		Imprimir "El trabajador (" Nombre ") NO trabajó horas extra, por lo que no tenddrá sueldo extra."
	FinSi
	
	Imprimir "-----------------------------------------------------------------"
	// C) Mostrar el total a pagar (sueldo normal mas horas extra)
	Imprimir "Sueldo de " Nombre
	SueldoSemanal2 <- SueldoDia * DiasTrabajados
	Imprimir "Sueldo Semanal " SueldoSemanal2
	SueldoTotal <-SueldoSemanal2 + SueldoDef
	Imprimir "El sueldo a pagar de (" Nombre ") es de ($" SueldoTotal ")"
	Imprimir "-----------------------------------------------------------------"
	// D) Realizar las siguientes deducciones
	//E)
	Imprimir "	Descuentos: "
	Imprimir "--------------"
	// Descuentp LISR
	Imprimir 	"Deducciones de LISR:"
	si ( SueldoTotal>=0 Y SueldoTotal<2500) Entonces
		DescuentoL <- SueldoTotal * 0.04
		
		Imprimir  "Se te aplicara un descuento de 4%"
		Imprimir "El descuento LISR es de: " DescuentoL
		
	SiNo
		si (SueldoTotal>2501) Entonces
			DescuentoL <- SueldoTotal * 0.07
			
			Imprimir  "Se te aplicara un descuento de 7%"
			Imprimir "El descuento LISR es de: " DescuentoL
		FinSi
		
		
	FinSi
	Imprimir "----------------------------------"
	//Descuento IMMS
	Imprimir "	Deducciones IMMS:"
	
	si (SueldoTotal >= 0 Y SueldoTotal <= 3000 ) Entonces
		DescuentoIMMS <- SueldoTotal * 0.03
		
		Imprimir  "Se te aplicara un descuento de 3%"
		Imprimir "El descuento IMMS es de: " DescuentoIMMS
		
	SiNo
		DescuentoIMMS <- SueldoTotal * 0.05
		
		Imprimir  "Se te aplicara un descuento de 5%"
		Imprimir "El descuento IMMS es de: " DescuentoIMMS
		
	FinSi
	Imprimir "-----------------------------------"
	//Cuota Sindical
	Imprimir "	Cuota sindical:"
	DescuentoCuota <- SueldoTotal * 0.02
	Imprimir  "Se te aplicara un descuento de 2%"
	
	Imprimir "El descuento por Cuota sindical es de: " DescuentoCuota
	
	
	//Total de descuentos
	TDescuentos <- DescuentoL + DescuentoIMMS + DescuentoCuota
	
	SueldoTotal <- SueldoTotal - TDescuentos
	Imprimir "-----------------------------------------------------------------"
	
	Imprimir "	DATOS FINALES"
	Imprimir "---------------------"
	Imprimir "NOMBRE COMPLETO: " Nombre " " Apellidos
	Imprimir "DIRECCION: " Direccion
	Imprimir "PUESTO: " Puesto
	Imprimir "SUELDO SEMANAL: " SueldoSemanal
	Imprimir "DIAS QUE DEBERIA TRABAJAR: " DiasTrabajo
	Imprimir "DIAS TRABAJADOS: " DiasTrabajados
	Imprimir "HORAS EXTRA TRABAJADAS: " HorasExtra
	Imprimir "SUELDO EXTRA: " SueldoExtra
	Imprimir "Descuentos: " TDescuentos
	Imprimir "----------------------------------------"
	Imprimir "	SUELDO TOTAL: " SueldoTotal

FinAlgoritmo
