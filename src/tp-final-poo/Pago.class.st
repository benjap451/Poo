"
class
"
Class {
	#name : 'Pago',
	#superclass : 'Object',
	#instVars : [
		'fecha',
		'monto',
		'metodoPago'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
Pago class >> crear: montoAbonado metodoPago: metodo [
|unPago| 
unPago := self new.
unPago init: montoAbonado metodoPago: metodo.
^unPago 
]

{ #category : 'accessing' }
Pago >> fecha [

	^ fecha
]

{ #category : 'initialization' }
Pago >> init: montoAbonado metodoPago: metodo [
monto := montoAbonado .
metodoPago := metodo.
fecha:= Date today.

]

{ #category : 'accessing' }
Pago >> metodoPago [

	^ metodoPago
]

{ #category : 'accessing' }
Pago >> monto [

	^ monto
]
