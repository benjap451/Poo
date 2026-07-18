"
clase
"
Class {
	#name : 'Mascota',
	#superclass : 'Object',
	#instVars : [
		'nombre',
		'especie',
		'raza',
		'peso',
		'fechaNacimiento'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
Mascota class >> crear: unNombre especie: unaEspecie raza: unaRaza peso: unPeso fechaNacimiento: unaFecha [
|unaMacota|
unaMacota := self new.
unaMacota init: unNombre especie: unaEspecie raza: unaRaza peso: unPeso fechaNacimiento: unaFecha .
^unaMacota 
]

{ #category : 'accessing' }
Mascota >> especie [

	^ especie
]

{ #category : 'accessing' }
Mascota >> fechaNacimiento [

	^ fechaNacimiento
]

{ #category : 'initialization' }
Mascota >> init: unNombre especie: unaEspecie raza: unaRaza peso: unPeso fechaNacimiento: unaFecha [
nombre := unNombre .
especie := unaEspecie .
raza := unaRaza .
peso := unPeso .
fechaNacimiento := unaFecha .
]

{ #category : 'accessing' }
Mascota >> nombre [

	^ nombre
]

{ #category : 'accessing' }
Mascota >> peso [

	^ peso
]

{ #category : 'accessing' }
Mascota >> raza [

	^ raza
]
