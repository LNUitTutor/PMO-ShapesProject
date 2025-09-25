Class {
	#name : 'Parallelogram',
	#superclass : 'Rect',
	#instVars : [
		'angle'
	],
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'instance creation' }
Parallelogram class >> newWithA: width andB: high [

	^ (super newWithA: width andB: high) angle: 60
]

{ #category : 'instance creation' }
Parallelogram class >> newWithA: width andB: high andAngle: aNumber [

	^ (super newWithA: width andB: high) angle: aNumber
]

{ #category : 'accessing' }
Parallelogram >> angle [

	^ angle
]

{ #category : 'accessing' }
Parallelogram >> angle: aNumber [

	angle := (aNumber max: 1) min: 179
]

{ #category : 'initialization' }
Parallelogram >> area [

	^ super area * (angle / 180 * Float pi) sin
]

{ #category : 'initialization' }
Parallelogram >> initialize [

	super initialize.
	angle := 60
]

{ #category : 'printing' }
Parallelogram >> printOn: aStream [

	aStream nextPutAll: 'a Parallelogram('.
	self a printOn: aStream.
	aStream nextPut: $,.
	self b printOn: aStream.
	aStream nextPut: $,.
	self angle printOn: aStream.
	aStream nextPut: $)
]
