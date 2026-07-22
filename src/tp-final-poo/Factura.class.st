"
clase
"
Class {
	#name : 'Factura',
	#superclass : 'Object',
	#instVars : [
		'cliente',
		'cuit',
		'diagnostico',
		'monto',
		'fechaFacturacion',
		'colPagos'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
Factura class >> crear: unCliente cuit: unCuit diagnostico: unDiag monto: unMonto [
|unaFactura|
unaFactura := self new.
unaFactura init: unCliente cuit: unCuit diagnostico: unDiag monto: unMonto.
^unaFactura 
]

{ #category : 'construction' }
Factura class >> crear: unCliente cuit: unCuit diagnostico: unDiag monto: unMonto fechaFacturacion: unaFecha [
|unaFactura|
unaFactura := self new.
unaFactura init: unCliente cuit: unCuit diagnostico: unDiag monto: unMonto fechaFacturacion: unaFecha.
^unaFactura 
]

{ #category : 'accessing' }
Factura >> cliente [

	^ cliente
]

{ #category : 'messages' }
Factura >> compararCliente: unCliente [

^cliente esIgual: unCliente 
]

{ #category : 'accessing' }
Factura >> cuit [

	^ cuit
]

{ #category : 'accessing' }
Factura >> diagnostico [

	^ diagnostico
]

{ #category : 'messages' }
Factura >> esPendiente [
^monto > self totalPagado 
]

{ #category : 'accessing' }
Factura >> fechaFacturacion [

	^ fechaFacturacion
]

{ #category : 'initialization' }
Factura >> init: unCliente cuit: unCuit diagnostico: unDiag monto: unMonto [

	cliente := unCliente.
	cuit := unCuit.
	diagnostico := unDiag.
	monto := unMonto.
	fechaFacturacion := Date today.
	colPagos := OrderedCollection new.
	
	
	
]

{ #category : 'accessing' }
Factura >> monto [

	^ monto
]

{ #category : 'messages' }
Factura >> obtenerNombreCliente [
^cliente nombre 
]

{ #category : 'messages' }
Factura >> rangoDeFecha: primerFecha fecha: segundaFecha [

^(primerFecha to: segundaFecha ) includes: fechaFacturacion 
]

{ #category : 'messages' }
Factura >> registrarPago: unPago [
	
	|t|
	t:= self totalPagado .
	(monto >= t and: monto>= unPago monto ) ifTrue: [ colPagos add: unPago ]
	
]

{ #category : 'messages' }
Factura >> totalPagado [
|t|
t:=0.
colPagos do: [ :p| 
		t:=t+p monto ].
	
^t 
]
