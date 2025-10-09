"
Just learning

A rectangle shape
"
Class {
	#name : 'PmoRectangle',
	#superclass : 'PmoFlatShape',
	#instVars : [
		'a',
		'b'
	],
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'instance creation' }
PmoRectangle class >> newWithA: width andB: high [

	| obj |
	obj := self basicNew.
	obj
		a: width;
		b: high.
	^ obj
]

{ #category : 'accessing' }
PmoRectangle >> a [

	^ a
]

{ #category : 'accessing' }
PmoRectangle >> a: aNumber [

	"a := aNumber max: 0.1"
	a := aNumber max: self class minimalSize
]

{ #category : 'calculating' }
PmoRectangle >> area [
	"Обчислює площу прямокутника"

	^ self a * self b
]

{ #category : 'accessing' }
PmoRectangle >> b [

	^ b
]

{ #category : 'accessing' }
PmoRectangle >> b: aNumber [

	b := aNumber max: self class minimalSize
]

{ #category : 'initialization' }
PmoRectangle >> initialize [

	self a: 1.
	self b: 2
]

{ #category : 'calculating' }
PmoRectangle >> perimeter [
	"Обчислює периметр прямокутника"

	^ (a + b) * 2
]

{ #category : 'printing' }
PmoRectangle >> printOn: aStream [

	aStream nextPutAll: 'a Rectangle('.
	self a printOn: aStream.
	aStream nextPut: $,.
	self b printOn: aStream.
	aStream nextPut: $)
]
