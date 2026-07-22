"
clase
"
Class {
	#name : 'Persona',
	#superclass : 'Object',
	#instVars : [
		'dni',
		'nombre',
		'apellido'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
Persona class >> crear: unDni nombre: unNombre apellido: unApellido [
|unaPersona|
unaPersona := self new.
unaPersona init: unDni nombre: unNombre apellido: unApellido .
^unaPersona 
]

{ #category : 'accessing' }
Persona >> apellido [

	^ apellido
]

{ #category : 'accessing' }
Persona >> dni [

	^ dni
]

{ #category : 'initialization' }
Persona >> init: unDni nombre: unNombre apellido: unApellido [
dni:= unDni .
nombre:= unNombre .
apellido:= unApellido .

]

{ #category : 'accessing' }
Persona >> nombre [

	^ nombre
]
