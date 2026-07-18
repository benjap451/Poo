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

{ #category : 'construction' }
Diagnostico class >> crear: unaFechaDiagnostico descripcion: unaDes medico: unMed mascota: unaMas [
|unDiagnostico|
unDiagnostico := self new.
unDiagnostico  init: unaFechaDiagnostico descripcion: unaDes medico: unMed mascota: unaMas .
^unDiagnostico 
]

{ #category : 'accessing' }
Diagnostico >> colTratamientos [

	^ colTratamientos
]

{ #category : 'accessing' }
Diagnostico >> descripcion [

	^ descripcion
]

{ #category : 'accessing' }
Diagnostico >> descripcion: anObject [

	descripcion := anObject
]

{ #category : 'accessing' }
Diagnostico >> fechaDiagnostico [

	^ fechaDiagnostico
]

{ #category : 'initialization' }
Diagnostico >> init: unaFechaDiagnostico descripcion: unaDes medico: unMed mascota: unaMas [
	fechaDiagnostico := unaFechaDiagnostico .
	descripcion := unaDes .
	medico :=unMed.
	mascota := unaMas.
	colTratamientos := OrderedCollection new .
	
	
]

{ #category : 'accessing' }
Diagnostico >> mascota [

	^ mascota
]

{ #category : 'accessing' }
Diagnostico >> medico [

	^ medico
]
