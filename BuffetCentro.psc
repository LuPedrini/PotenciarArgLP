Algoritmo Buffet_Centro_Tradicionalista
	//Precios costo y venta de productos $
	empanada_precio_costo<-1500
	empanada_precio_venta<-3000
	vinob_precio_costo<-1000
	vinob_precio_venta<-2000
	//Cantidades en stock U
	empanada_stock<-0
	vinob_stock<-0
	//Los cambios en stock usan la variable "nuevo_stock_" + "letra del producto"
	//Cantidades vendidas U
	empanada_vendids<-0
	vinob_vendids<-0
	//Las ventas usan la variable "producto" + "_venta_mas"
	//Ventas en $ de cada unidad U
	ventas_empanadas<-0
	ventas_vinob<-0
	//Total ventas $
	total_ventas<-0
	total_costos<-0
	//Ganancia $
	ganancia_bruta<-0
	ganancia_sobre_ventas<-0
	Definir opciones, op_precio_modificar, op_stock Como Entero
	Escribir "¡Hola! este algoritmo sólo acepta números, si ingresa letras dará ERROR"
	Escribir ""
	Repetir
		Escribir "Ingrese una opción para continuar: (Un número del 1 al 7)"
		Escribir "1-Imprimir listado de precios de costo y venta"
		Escribir "2-Modificar precios"
		Escribir "3-Imprimir listado de stock"
		Escribir "4-Ingresar stock"
		Escribir "5-Ingresar ventas"
		Escribir "6-Mostrar balance"
		Escribir "7-Salir"
		Leer opciones
		Segun opciones Hacer
			1://Imprimir listado de precios
				Imprimir "Lista de precios: "
				Imprimir "Precio costo empanada: $ ", empanada_precio_costo
				Imprimir "Precio venta empanada: $ ", empanada_precio_venta
				Imprimir "Precio costo vino (botella): $ ", vinob_precio_costo
				Imprimir "Precio venta vino (botella): $ ", vinob_precio_venta
			2://Modificar precios
				Repetir
					Escribir "Elegir el precio a modificar (Un número del 1 al 4)"
					Escribir "1-Empanadas precio de venta"
					Escribir "2-Empanadas precio de costo"
					Escribir "3-Vino (botella) precio de venta"
					Escribir "4-Vino (botella) precio de costo"
					Escribir "Para volver al menú principal ingrese 0"
					Leer op_precio_modificar
					Segun op_precio_modificar Hacer
						1: Escribir "Ingrese Empanadas precio de venta"
							Leer empanada_precio_venta
						2: Escribir "Ingrese Empanadas precio de costo"
							Leer empanada_precio_costo
						3: Escribir "Ingrese Vino (botella) precio de venta"
							Leer vinob_precio_venta
						4: Escribir "Ingrese Vino (botella) precio de costo"
							Leer vinob_precio_costo
						0: Escribir "Volviendo al menú"
						De Otro Modo:
							Escribir "Opción no válida"
					Fin Segun
				Hasta Que op_precio_modificar=0
			3://Imprimir listado de stock
				Imprimir "Lista de stock: "
				Imprimir "Empanadas________", empanada_stock
				Imprimir "Vino (botella)___", vinob_stock
			4://Ingresar stock
				Repetir
					Escribir "Elegir el producto para modificar el stock (Un número del 1 al 2)"
					Escribir "1-Empanadas"
					Escribir "2-Vino (botella)"
					Escribir "Para volver al menú principal ingrese 0"
					Leer op_stock
					Segun op_stock Hacer
						1: Escribir "Ingrese modificación de stock Empanadas"
							Leer nuevo_stock_e
							empanada_stock<-empanada_stock+nuevo_stock_e
						2: Escribir "Ingrese modificación de stock Vino (botella)"
							Leer nuevo_stock_v
							vinob_stock<-vinob_stock+nuevo_stock_v
						0: Escribir "Volviendo al menú"
						De Otro Modo:
							Escribir "Opción no válida"
					Fin Segun
				Hasta Que op_stock=0
			5://3-Ingresar ventas
				Escribir "Recuerde antes de anotar ventas que debe chequear el stock"
				Escribir "Ingrese la cantidad de empanadas vendidas"
				Leer empanada_venta_mas
				empanada_vendids<-empanada_vendids+empanada_venta_mas
				empanada_stock<-empanada_stock-empanada_venta_mas
				Escribir "Ingrese la cantidad de botellas de vino vendidas"
				Leer vinob_venta_mas
				vinob_vendids<-vinob_vendids+vinob_venta_mas
				vinob_stock<-vinob_stock-vinob_venta_mas
			6://Mostrar balance
				//Cuentas empanadas
				ventas_empanadas=empanada_vendids*empanada_precio_venta
				costos_empanadas=(empanada_stock+empanada_vendids)*empanada_precio_costo
				costos_empanadas_vendids=empanada_vendids*empanada_precio_costo
				remanentes_empanadas_dinero<-empanada_stock*empanada_precio_costo
				//Cuentas vinos
				ventas_vinob=vinob_vendids*vinob_precio_venta
				costos_vinob=(vinob_stock+vinob_vendids)*vinob_precio_costo
				costos_vinob_vendids=vinob_vendids*vinob_precio_costo
				remanentes_vinob_dinero<-vinob_stock*vinob_precio_costo
				//Cuentas generales
				total_ventas<-ventas_empanadas+ventas_vinob
				total_costos<-costos_empanadas+costos_vinob
				total_costos_ventas<-(costos_empanadas_vendids+costos_vinob_vendids)
				remanentes_dinero<-remanentes_empanadas_dinero+remanentes_vinob_dinero
				Si total_ventas=0 Entonces
					Escribir "AÚN NO HAY VENTAS"
				SiNo
					ganancia_bruta<-total_ventas-total_costos
					ganancia_b_porcentual<-(ganancia_bruta/total_ventas)*100
					ganancia_sobre_ventas<-total_ventas-total_costos_ventas
					ganancia_sobre_ventas_porcentual<-(ganancia_sobre_ventas/total_ventas)*100
					Escribir "El total de unidades vendidas es:"
					Escribir "Empanadas___________", empanada_vendids
					Escribir "Botellas de vino____", vinob_vendids
					Escribir ""
				FinSi
				Escribir "Ingresaron $ ", total_ventas
				Escribir "Ganancia bruta $ ", ganancia_bruta, ", el ", trunc(ganancia_b_porcentual), "%"
				Escribir "Ganancias sobre ventas $ ", ganancia_sobre_ventas, ", el ", trunc(ganancia_sobre_ventas_porcentual), "%"
				Escribir ""
				Escribir "Remanentes: ", empanada_stock, " empanadas"
				Escribir "Remanentes: ", vinob_stock, " botellas de vino"
				Escribir "Los remanentes al precio de costo representan: $ ", remanentes_dinero
				Escribir ""
			7://Salir
				Escribir "Saliendo de la aplicación"
			De Otro Modo:
				Escribir "Opción no válida"
		Fin Segun
		Escribir "Presione enter para continuar"
		Esperar Tecla
	Hasta Que opciones=7
	Escribir "Gracias por utilizar este algoritmo"
FinAlgoritmo
