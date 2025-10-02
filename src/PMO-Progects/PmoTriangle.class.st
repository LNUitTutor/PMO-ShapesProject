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

{ #category : 'instance creation' }
PmoTriangle class >> newWithA: side_1 andB: side_2 byAngle: gamma [

	^ self basicNew
		  a: side_1;
		  b: side_2;
		  angle: gamma
]

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

{ #category : 'initialization' }
PmoTriangle >> initialize [

	a := 3.
	b := 4.
	angle := 90
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
