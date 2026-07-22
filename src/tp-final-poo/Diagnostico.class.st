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
		'colTratamientos',
		'id'
	],
	#classVars : [
		'CONTADOR'
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

{ #category : 'class initialization' }
Diagnostico class >> initialize [ 
CONTADOR:=0.
]

{ #category : 'accessing' }
Diagnostico class >> obtenerContador [

	^ CONTADOR
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

{ #category : 'messages' }
Diagnostico >> esIgual: unDiagnostico [

	^ id = unDiagnostico id
]

{ #category : 'accessing' }
Diagnostico >> fechaDiagnostico [

	^ fechaDiagnostico
]

{ #category : 'initialization' }
Diagnostico >> init: unaFechaDiagnostico descripcion: unaDes medico: unMed mascota: unaMas [

	fechaDiagnostico := unaFechaDiagnostico.
	descripcion := unaDes.
	medico := unMed.
	mascota := unaMas.
	colTratamientos := OrderedCollection new.
	id:= self class obtenerContador .
]

{ #category : 'accessing' }
Diagnostico >> mascota [

	^ mascota
]

{ #category : 'accessing' }
Diagnostico >> medico [

	^ medico
]

{ #category : 'messages' }
Diagnostico >> montoFinal [
|c|
c := 0.

colTratamientos do: [ :t|
		 c:= c + t calcularCosto ].

^c	
]
