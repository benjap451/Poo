"
clase
"
Class {
	#name : 'Medico',
	#superclass : 'Persona',
	#instVars : [
		'fechaNacimiento',
		'cuil',
		'domicilio',
		'colMatriculas'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
Medico class >> crear: unDni nombre: unNombre apellido: unApellido fechaNacimiento: unaFecha cuil: unCuil domicilio: unDom [

|unMedico|

unMedico :=self new.
unMedico init: unDni nombre: unNombre apellido: unApellido fechaNacimiento: unaFecha cuil: unCuil domicilio: unDom.
^unMedico 
]

{ #category : 'initialization' }
Medico >> init: unDni nombre: unNombre apellido: unApellido fechaNacimiento: unaFecha cuil: unCuil domicilio: unDom [ 

self init: unDni nombre: unNombre apellido: unApellido.
fechaNacimiento := unaFecha .
cuil := unCuil .
domicilio := unDom .
colMatriculas := OrderedCollection  new.
]
