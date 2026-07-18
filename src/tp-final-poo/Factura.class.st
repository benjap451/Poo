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
		'fechaFacturacion'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

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

{ #category : 'accessing' }
Factura >> cuit [

	^ cuit
]

{ #category : 'accessing' }
Factura >> diagnostico [

	^ diagnostico
]

{ #category : 'accessing' }
Factura >> fechaFacturacion [

	^ fechaFacturacion
]

{ #category : 'initialization' }
Factura >> init: unCliente cuit: unCuit diagnostico: unDiag monto: unMonto fechaFacturacion: unaFecha [
cliente := unCliente .
cuit := unCuit .
diagnostico := unDiag .
monto := unMonto .
fechaFacturacion := unaFecha .
]

{ #category : 'accessing' }
Factura >> monto [

	^ monto
]
