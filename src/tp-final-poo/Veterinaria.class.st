"
clase
"
Class {
	#name : 'Veterinaria',
	#superclass : 'Object',
	#instVars : [
		'colMedicos',
		'colClientes',
		'colDiagnosticos',
		'colFacturas'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
Veterinaria class >> crear [
|unaVeterinaria|
unaVeterinaria := self new. 
unaVeterinaria init.
^unaVeterinaria 
]

{ #category : 'accessing' }
Veterinaria >> colClientes [

	^ colClientes
]

{ #category : 'accessing' }
Veterinaria >> colDiagnosticos [

	^ colDiagnosticos
]

{ #category : 'accessing' }
Veterinaria >> colFacturas [

	^ colFacturas
]

{ #category : 'accessing' }
Veterinaria >> colMedicos [

	^ colMedicos
]

{ #category : 'initialization' }
Veterinaria >> init [
colMedicos := OrderedCollection new.
colClientes := OrderedCollection new.
colDiagnosticos := OrderedCollection new.
colFacturas := OrderedCollection new.
]
