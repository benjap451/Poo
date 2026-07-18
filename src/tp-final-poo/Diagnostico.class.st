"
clase
"
Class {
	#name : 'Diagnostico',
	#superclass : 'Object',
	#instVars : [
		'fechaDiagnostico',
		'descripcion',
		'medico',
		'mascota',
		'colTratamientos'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'as yet unclassified' }
Diagnostico >> init: unaFechaDiagnostico descripcion: unaDes medico: unMed mascota: unaMas [
	fechaDiagnostico := unaFechaDiagnostico .
	descripcion := unaDes .
	medico :=unMed.
	mascota := unaMas.
	colTratamientos := OrderedCollection new .
	
	
]
