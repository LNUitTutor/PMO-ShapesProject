Class {
	#name : 'Square',
	#superclass : 'PmoRectangle',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'instance creation' }
Square class >> newWithA: aSide [

	| obj |
	obj := self basicNew.
	obj a: aSide.
	^ obj
]

{ #category : 'accessing' }
Square >> a: aNumber [

	a := aNumber.
	b := aNumber
]

{ #category : 'accessing' }
Square >> b: aNumber [

	^ self
]

{ #category : 'printing' }
Square >> printOn: aStream [

	aStream nextPutAll: 'a Square('.
	self a printOn: aStream.
	aStream nextPut: $)
]
