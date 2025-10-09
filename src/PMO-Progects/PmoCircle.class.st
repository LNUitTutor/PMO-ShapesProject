Class {
	#name : 'PmoCircle',
	#superclass : 'PmoFlatShape',
	#instVars : [
		'r'
	],
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'instance creation' }
PmoCircle class >> newWithR: r [

	^ self basicNew r: r
]

{ #category : 'calculating' }
PmoCircle >> area [

	^ Float pi * r squared 
]

{ #category : 'initialization' }
PmoCircle >> initialize [
	r := 1
]

{ #category : 'calculating' }
PmoCircle >> perimeter [

	^ Float pi * 2.0 * r
]

{ #category : 'as yet unclassified' }
PmoCircle >> printOn: aStream [

	aStream
		nextPutAll: 'Circle(';
		print: self r;
		nextPut: $)
]

{ #category : 'accessing' }
PmoCircle >> r [

	^ r
]

{ #category : 'accessing' }
PmoCircle >> r: aNumber [

	r := aNumber max: self class minimalSize
]
