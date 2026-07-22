"
clase
"
Class {
	#name : 'Farmacologico',
	#superclass : 'Tratamiento',
	#instVars : [
		'medicamento',
		'dosis',
		'frecuencia'
	],
	#classVars : [
		'TOPEDESCUENTO'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'creation' }
Farmacologico class >> crear: unMotivo medicamento: unMed dosis: unaDosis frecuencia: unaFre [

|unFarma|

unFarma := self new.
unFarma init: unMotivo medicamento: unMed dosis: unaDosis frecuencia: unaFre.

^unFarma 
]

{ #category : 'class initialization' }
Farmacologico class >> initialize [
TOPEDESCUENTO:= 40000.

]

{ #category : 'messages' }
Farmacologico >> calcularCosto [

	| res |
	res := super calcularCosto.

	res := res + (medicamento precioBase  * dosis).

	res > 40000 ifTrue: [ res := res * 0.90 ].

	^ res
]

{ #category : 'messages' }
Farmacologico >> esValido [

	^ super esValido or: medicamento ventaLibre 
]

{ #category : 'initialization' }
Farmacologico >> init: unMotivo medicamento: unMed dosis: unaDosis frecuencia: unaFre [

self init: unMotivo .
medicamento := unMed .
dosis := unaDosis .
frecuencia := unaFre .
]
