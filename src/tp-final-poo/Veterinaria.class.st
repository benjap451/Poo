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
Veterinaria class >> crear [
|unaVeterinaria|
unaVeterinaria := self new. 
unaVeterinaria init.
^unaVeterinaria 
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
Veterinaria >> generarFactura: unDiagnostico [

	| res unaFactura |
	res := false.
	(colFacturas detect: [ :f | f diagnostico esIgual: unDiagnostico ] ifNone: [ nil ]) ifNil: [
			| unaMascota unCliente costo |
			unaMascota := unDiagnostico mascota.
			unCliente := self buscarClienteConMascota: unaMascota.
			costo := unDiagnostico calcularCosto.
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

{ #category : 'initialization' }
Veterinaria >> init [

	colMedicos := OrderedCollection new.
	colClientes := OrderedCollection new.
	colDiagnosticos := OrderedCollection new.
	colFacturas := OrderedCollection new.
	colMedicamentos := OrderedCollection new. 
]
