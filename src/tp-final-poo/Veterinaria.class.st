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
		'colFacturas',
		'colMedicamentos',
		'cuit'
	],
	#category : 'tp-final-poo',
	#package : 'tp-final-poo'
}

{ #category : 'construction' }
Veterinaria class >> crear: unCuit [

	| unaVeterinaria |
	unaVeterinaria := self new.
	unaVeterinaria init: unCuit.
	^ unaVeterinaria
]

{ #category : 'messages' }
Veterinaria >> buscarClienteConMascota: unaMacota [
^colClientes detect:[:c|
		c compararMascota: unaMacota ] ifNone: [ nil ]
	
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

{ #category : 'accessing' }
Veterinaria >> cuit [

	^ cuit
]

{ #category : 'messages' }
Veterinaria >> facturasPendientes [

	| colPendientes cadena |
	colPendientes := OrderedCollection new.
	colFacturas do: [ :f |
			(f esPendiente) ifTrue: [
					cadena := f obtenerNombreCliente + ', ' + (f monto - f montoFinal).
					colPendientes add: cadena ] ].
	^ colPendientes
]

{ #category : 'messages' }
Veterinaria >> facturasPendientesPorCliente: unCliente [

^colFacturas select: [ : f |
		(f compararCliente:unCliente) and: (f esPendiente ) ].
]

{ #category : 'messages' }
Veterinaria >> generarFactura: unDiagnostico [

	| res unaFactura |
	res := false.
	(colFacturas detect: [ :f | f diagnostico esIgual: unDiagnostico ] ifNone: [ nil ]) ifNil: [
			| unaMascota unCliente costo |
			unaMascota := unDiagnostico mascota.
			unCliente := self buscarClienteConMascota: unaMascota.
			unCliente ifNil: [ ^ false ].
			costo := unDiagnostico montoFinal .
			unaFactura := Factura
				              crear: unCliente
				              cuit: cuit
				              diagnostico: unDiagnostico
				              monto: costo
				              fechaFacturacion: Date today.
			colFacturas add: unaFactura.
			res := true ].
	^ res
]

{ #category : 'messages' }
Veterinaria >> generarListadoFaltantes [

^colMedicamentos select: [ :m|
		m faltaStock ]
]

{ #category : 'messages' }
Veterinaria >> historialClinicoDe: unaMascota [

|colRes|

colRes := colDiagnosticos select: [ : d |  
			d compararMascota: unaMascota ].
		
colRes addAll: unaMascota listaDeVacunasAplicadas .

^colRes 
]

{ #category : 'initialization' }
Veterinaria >> init: unCuit [

	colMedicos := OrderedCollection new.
	colClientes := OrderedCollection new.
	colDiagnosticos := OrderedCollection new.
	colFacturas := OrderedCollection new.
	colMedicamentos := OrderedCollection new.
	cuit := unCuit.
]

{ #category : 'messages' }
Veterinaria >> mascotasConVacunasVencidas [

|colAux |
colAux := OrderedCollection  new.
colClientes do: [ : c |
		colAux addAll: c revisarMascotas ].
	
^colAux
]

{ #category : 'messages' }
Veterinaria >> recaudacionEntreFechas: primerFecha fecha: segundaFecha [

|montoAux|
montoAux :=0.
colFacturas do: [ : f |
		(f rangoDeFecha: primerFecha fecha: segundaFecha ) ifTrue:[
				montoAux:= montoAux + f monto ].
			].
		
^montoAux 
	
]

{ #category : 'messages' }
Veterinaria >> tratamientosPorVeterinario: unVeterinario [

|colRes|
colRes := OrderedCollection new.

colDiagnosticos do: [ :d|
		(d realizadoPorVeterinario: unVeterinario) ifTrue:[
			colRes addAll: d colTratamientos ].].
	
^colRes 
]
