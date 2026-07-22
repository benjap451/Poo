"
clase
"
Class {
	#name : 'Quirurgico',
	#superclass : 'Tratamiento',
	#instVars : [
		'nombreProcedimiento',
		'nivelRiesgo',
		'tipoAnestesia'
	],
	#classVars : [
		'ANESTESIA',
		'RIESGO'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'class initialization' }
Quirurgico class >> initialize [ 
RIESGO := Dictionary new.
RIESGO at: 1 put: 0.1.
RIESGO at: 2 put: 0.2.
ANESTESIA := Dictionary new.
ANESTESIA at: 'local'  put: 30000.
ANESTESIA at: 'regional'  put: 60000.
ANESTESIA at: 'general'  put: 100000.
]

{ #category : 'messages' }
Quirurgico class >> obtenerValorAnestesia: tipo [
^ANESTESIA at: tipo
]

{ #category : 'messages' }
Quirurgico class >> obtenerValorRiesgo: nivel [

	^RIESGO at: nivel
]

{ #category : 'messages' }
Quirurgico >> calcularCosto [

	^ (super calcularCosto) + (self class obtenerValorAnestesia: tipoAnestesia) + (self class obtenerValorRiesgo: nivelRiesgo)
]

{ #category : 'messages' }
Quirurgico >> esValido [

	| res |
	res := super esValido.

	(nivelRiesgo = 2 and: tipoAnestesia ~= 'general') ifTrue: [ res := false ].

	^ res
]
