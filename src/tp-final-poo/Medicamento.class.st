"
class
"
Class {
	#name : 'Medicamento',
	#superclass : 'Object',
	#instVars : [
		'nombre',
		'precioBase',
		'ventaLibre',
		'stock'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'creation' }
Medicamento class >> crear: unNombre precioBase: unPrecio stock: unStock ventaLibre: libre [
|unMedicamento|

unMedicamento := self new.
unMedicamento init: unNombre precioBase: unPrecio stock: unStock ventaLibre: libre .
^unMedicamento 
]

{ #category : 'messages' }
Medicamento >> faltaStock [

	^ stock <= 1
]

{ #category : 'initialization' }
Medicamento >> init: unNombre precioBase: unPrecio stock: unStock ventaLibre: libre [
nombre:= unNombre .
precioBase := unPrecio .
stock := unStock .
ventaLibre := libre.
]

{ #category : 'accessing' }
Medicamento >> nombre [

	^ nombre
]

{ #category : 'accessing' }
Medicamento >> precioBase [

	^ precioBase
]

{ #category : 'accessing' }
Medicamento >> stock [

	^ stock
]

{ #category : 'accessing' }
Medicamento >> ventaLibre [

	^ ventaLibre
]
