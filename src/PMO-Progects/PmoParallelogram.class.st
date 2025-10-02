Class {
	#name : 'PmoParallelogram',
	#superclass : 'PmoRectangle',
	#instVars : [
		'angle'
	],
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'instance creation' }
PmoParallelogram class >> newWithA: width andB: high [

	^ (super newWithA: width andB: high) angle: 60
]

{ #category : 'instance creation' }
PmoParallelogram class >> newWithA: width andB: high andAngle: aNumber [

	^ (super newWithA: width andB: high) angle: aNumber
]

{ #category : 'accessing' }
PmoParallelogram >> angle [

	^ angle
]

{ #category : 'accessing' }
PmoParallelogram >> angle: aNumber [

	angle := (aNumber max: 1) min: 179
]

{ #category : 'initialization' }
PmoParallelogram >> area [

	^ super area * (angle / 180 * Float pi) sin
]

{ #category : 'initialization' }
PmoParallelogram >> initialize [

	super initialize.
	angle := 60
]

{ #category : 'printing' }
PmoParallelogram >> printOn: aStream [

	aStream nextPutAll: 'a Parallelogram('.
	self a printOn: aStream.
	aStream nextPut: $,.
	self b printOn: aStream.
	aStream nextPut: $,.
	self angle printOn: aStream.
	aStream nextPut: $)
]
