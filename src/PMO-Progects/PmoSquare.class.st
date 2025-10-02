Class {
	#name : 'PmoSquare',
	#superclass : 'PmoRectangle',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'instance creation' }
PmoSquare class >> newWithA: aSide [

	| obj |
	obj := self basicNew.
	obj a: aSide.
	^ obj
]

{ #category : 'accessing' }
PmoSquare >> a: aNumber [

	a := aNumber.
	b := aNumber
]

{ #category : 'accessing' }
PmoSquare >> b: aNumber [

	^ self
]

{ #category : 'printing' }
PmoSquare >> printOn: aStream [

	aStream nextPutAll: 'a Square('.
	self a printOn: aStream.
	aStream nextPut: $)
]
