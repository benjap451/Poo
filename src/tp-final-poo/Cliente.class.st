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

{ #category : 'messages' }
Cliente >> compararMascota: unaMascota [
|res|

res:= colMascotas detect:[:m| 
		m esIgual: unaMascota ] ifNone: [nil].
	
^res isNotNil 
]
