"
clase
"
Class {
	#name : 'Cliente',
	#superclass : 'Persona',
	#instVars : [
		'telefono',
		'colMascotas'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'creation' }
Cliente class >> crear: unDni nombre: unNombre apellido: unApellido telefono: unTel [

|unCliente|

unCliente := self new.
unCliente init: unDni nombre: unNombre apellido: unApellido telefono: unTel.
^unCliente 
]

{ #category : 'messages' }
Cliente >> compararMascota: unaMascota [
|res|

res:= colMascotas detect:[:m| 
		m esIgual: unaMascota ] ifNone: [nil].
	
^res isNotNil 
]

{ #category : 'messages' }
Cliente >> esIgual: unCliente [

^dni  = unCliente dni 
]

{ #category : 'initialization' }
Cliente >> init: unDni nombre: unNombre apellido: unApellido telefono: unTel [ 
self init: unDni nombre: unNombre apellido: unApellido.
telefono := unTel .
colMascotas := OrderedCollection new.
]

{ #category : 'messages' }
Cliente >> revisarMascotas [

^colMascotas select: [ : m | 
		m revisarAplicaciones ]
]
