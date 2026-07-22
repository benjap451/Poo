"
clase
"
Class {
	#name : 'Tratamiento',
	#superclass : 'Object',
	#instVars : [
		'fecha',
		'motivo'
	],
	#classVars : [
		'VALORBASE'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
Tratamiento class >> crear: unMotivo [
|unTratamiento|
unTratamiento := self new.
unTratamiento init: unMotivo .
^unTratamiento 
]

{ #category : 'messages' }
Tratamiento >> calcularCosto [
^VALORBASE
]

{ #category : 'messages' }
Tratamiento >> esValido [
^(Date dayOfWeek: fecha dayOfWeekName )between: 2 and: 6
]

{ #category : 'accessing' }
Tratamiento >> fecha [

	^ fecha
]

{ #category : 'initialization' }
Tratamiento >> init: unMotivo [ 
fecha := Date today .
motivo:= unMotivo .

]

{ #category : 'accessing' }
Tratamiento >> motivo: anObject [

	motivo := anObject
]
