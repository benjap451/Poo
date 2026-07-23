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
		'fechaNacimiento',
		'id',
		'colAplicacionVacunas'
	],
	#classVars : [
		'CONTADOR'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'messages' }
Mascota class >> aumentarCont [
CONTADOR := CONTADOR +1.

]

{ #category : 'construction' }
Mascota class >> crear: unNombre especie: unaEspecie raza: unaRaza peso: unPeso fechaNacimiento: unaFecha [
|unaMacota|
unaMacota := self new.
unaMacota init: unNombre especie: unaEspecie raza: unaRaza peso: unPeso fechaNacimiento: unaFecha .
^unaMacota 
]

{ #category : 'class initialization' }
Mascota class >> initialize [
CONTADOR:=1.

]

{ #category : 'messages' }
Mascota >> aplicarVacuna: unaVacuna veterinario: unVet [

|unaAplicacion|

unaAplicacion := AplicacionVacuna crear: self vacuna: unaVacuna veterinario: unVet .

colAplicacionVacunas add: unaAplicacion .
]

{ #category : 'messages' }
Mascota >> esIgual: unaMascota [
^self id = unaMascota id
]

{ #category : 'accessing' }
Mascota >> especie [

	^ especie
]

{ #category : 'accessing' }
Mascota >> fechaNacimiento [

	^ fechaNacimiento
]

{ #category : 'accessing' }
Mascota >> id [

	^ id
]

{ #category : 'initialization' }
Mascota >> init: unNombre especie: unaEspecie raza: unaRaza peso: unPeso fechaNacimiento: unaFecha [

	nombre := unNombre.
	especie := unaEspecie.
	raza := unaRaza.
	peso := unPeso.
	fechaNacimiento := unaFecha.
	id := CONTADOR.
	self class aumentarCont.
	colAplicacionVacunas := OrderedCollection new.
	
]

{ #category : 'messages' }
Mascota >> listaDeVacunasAplicadas [
^colAplicacionVacunas 
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

{ #category : 'messages' }
Mascota >> revisarAplicaciones [
	|colAux| 
	
	colAux:= colAplicacionVacunas select: [ :a | a estaVencida ].
	
	^colAux isNotNil 
]

{ #category : 'messages' }
Mascota >> ultimaAplicacionDe: unaVacuna [

|colAux|

colAux:= colAplicacionVacunas asSortedCollection: [:a :b| a fecha > b fecha ].
		
^colAux detect:[: a | a esDeVacuna: unaVacuna ] ifNone: [nil].




]
