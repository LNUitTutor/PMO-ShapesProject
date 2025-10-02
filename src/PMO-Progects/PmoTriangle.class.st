Class {
	#name : 'PmoTriangle',
	#superclass : 'PmoFlatShape',
	#instVars : [
		'a',
		'b',
		'angle'
	],
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'accessing' }
PmoTriangle >> a [

	^ a
]

{ #category : 'accessing' }
PmoTriangle >> a: aNumber [

	a := aNumber max: 0.1
]

{ #category : 'accessing' }
PmoTriangle >> angle [

	^ angle
]

{ #category : 'accessing' }
PmoTriangle >> angle: aNumber [

	angle := (aNumber max: 1) min: 179
]

{ #category : 'calculating' }
PmoTriangle >> area [

	^ 0.5 * self a * self b * self angle degreesToRadians sin
]

{ #category : 'accessing' }
PmoTriangle >> b [

	^ b
]

{ #category : 'accessing' }
PmoTriangle >> b: aNumber [

	b := aNumber max: 0.1
]

{ #category : 'accessing' }
PmoTriangle >> c [

	^ (a squared + b squared - (2 * a * b * angle degreesToRadians cos)) sqrt
]

{ #category : 'calculating' }
PmoTriangle >> perimeter [

	^ self a + self b + self c
]

{ #category : 'printing' }
PmoTriangle >> printOn: aStream [

	aStream
		nextPutAll: 'Triangle<';
		print: self a;
		nextPut: $;;
		print: self b;
		nextPut: $;;
		print: self angle;
		nextPut: $>
]
