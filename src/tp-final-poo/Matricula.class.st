"
clase
"
Class {
	#name : 'Matricula',
	#superclass : 'Object',
	#instVars : [
		'nro',
		'colegio',
		'fechaInscripcion',
		'fechaVigencia',
		'tipo'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
Matricula class >> crear: unNro colegio: unColegio fechaInscripcion: unaFechaI fechaVigencia: unaFechaV tipo: unTipo [
|unaMatricula|
unaMatricula := self new.
unaMatricula  init: unNro colegio: unColegio fechaInscripcion: unaFechaI fechaVigencia: unaFechaV tipo: unTipo .
^unaMatricula 
]

{ #category : 'accessing' }
Matricula >> colegio [

	^ colegio
]

{ #category : 'accessing' }
Matricula >> fechaInscripcion [

	^ fechaInscripcion
]

{ #category : 'accessing' }
Matricula >> fechaVigencia [

	^ fechaVigencia
]

{ #category : 'initialization' }
Matricula >> init: unNro colegio: unColegio fechaInscripcion: unaFechaI fechaVigencia: unaFechaV tipo: unTipo [
nro:= unNro .
colegio := unColegio .
fechaInscripcion := unaFechaI .
fechaVigencia := unaFechaV .
tipo:= unTipo .
]

{ #category : 'accessing' }
Matricula >> nro [

	^ nro
]

{ #category : 'accessing' }
Matricula >> tipo [

	^ tipo
]
