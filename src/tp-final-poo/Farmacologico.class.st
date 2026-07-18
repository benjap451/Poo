"
clase
"
Class {
	#name : 'Farmacologico',
	#superclass : 'Tratamiento',
	#instVars : [
		'nombreMonodroga',
		'valorMonodroga',
		'ventaLibre',
		'dosis',
		'frecuencia'
	],
	#classVars : [
		'TOPEDESCUENTO'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'class initialization' }
Farmacologico class >> initialize [
TOPEDESCUENTO:= 40000.

]
