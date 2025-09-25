"
Just learning

A rectangle shape
"
Class {
	#name : 'Rect',
	#superclass : 'Object',
	#instVars : [
		'a',
		'b'
	],
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'instance creation' }
Rect class >> newWithA: width andB: high [

	| obj |
	obj := self basicNew.
	obj
		a: width;
		b: high.
	^ obj
]

{ #category : 'accessing' }
Rect >> a [

	^ a
]

{ #category : 'accessing' }
Rect >> a: aNumber [ 
	a := aNumber  max: 0.1
]

{ #category : 'calculating' }
Rect >> area [
	"Обчислює площу прямокутника"

	^ self a * self b
]

{ #category : 'accessing' }
Rect >> b [

	^ b
]

{ #category : 'accessing' }
Rect >> b: aNumber [

	b := aNumber max: 0.1
]

{ #category : 'initialization' }
Rect >> initialize [

	self a: 1.
	self b: 2
]

{ #category : 'calculating' }
Rect >> perimeter [
	"Обчислює периметр прямокутника"

	^ (a + b) * 2
]

{ #category : 'printing' }
Rect >> printOn: aStream [

	aStream nextPutAll: 'a Rectangle('.
	self a printOn: aStream.
	aStream nextPut: $,.
	self b printOn: aStream.
	aStream nextPut: $)
]
