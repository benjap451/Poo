"
class
"
Class {
	#name : 'Vacuna',
	#superclass : 'Object',
	#instVars : [
		'nombre',
		'laboratorio',
		'especieDestino',
		'mesesVigencia'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'messages' }
Vacuna >> comparar: unaVacuna [

^self nombre = unaVacuna nombre 
]

{ #category : 'messages' }
Vacuna >> compararFecha: unaFecha [
	|fechaAux|
	fechaAux :=unaFecha addMonths: mesesVigencia.

	^ fechaAux < Date today
]

{ #category : 'accessing' }
Vacuna >> especieDestino [

	^ especieDestino
]

{ #category : 'accessing' }
Vacuna >> laboratorio [

	^ laboratorio
]

{ #category : 'accessing' }
Vacuna >> mesesVigencia [

	^ mesesVigencia
]

{ #category : 'accessing' }
Vacuna >> nombre [

	^ nombre
]
