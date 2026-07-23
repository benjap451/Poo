"
class
"
Class {
	#name : 'AplicacionVacuna',
	#superclass : 'Object',
	#instVars : [
		'fecha',
		'mascota',
		'vacuna',
		'veterinario'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
AplicacionVacuna class >> crear: unaMascota vacuna: unaVacuna veterinario: unVeterinario [

	| unaAplicacion |
	unaAplicacion := self new.
	unaAplicacion init: unaMascota vacuna: unaMascota veterinario: unVeterinario.

	^ unaAplicacion
]

{ #category : 'messages' }
AplicacionVacuna >> esDeVacuna: unaVacuna [

^vacuna comparar: unaVacuna
]

{ #category : 'messages' }
AplicacionVacuna >> estaVencida [

	^ vacuna compararFecha: fecha
]

{ #category : 'accessing' }
AplicacionVacuna >> fecha [

	^ fecha
]

{ #category : 'initialization' }
AplicacionVacuna >> init: unaMascota vacuna: unaVacuna veterinario: unVeterinario [

	fecha := Date today.
	mascota := unaMascota.
	vacuna := unaVacuna.
	veterinario := unVeterinario
]

{ #category : 'accessing' }
AplicacionVacuna >> mascota [

	^ mascota
]

{ #category : 'accessing' }
AplicacionVacuna >> vacuna [

	^ vacuna
]

{ #category : 'accessing' }
AplicacionVacuna >> veterinario [

	^ veterinario
]
