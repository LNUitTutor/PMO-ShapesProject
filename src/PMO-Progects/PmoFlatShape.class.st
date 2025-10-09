Class {
	#name : 'PmoFlatShape',
	#superclass : 'Object',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'constants' }
PmoFlatShape class >> minimalSize [

	^ 0.1
]

{ #category : 'calculating' }
PmoFlatShape >> area [

	^ self subclassResponsibility
]

{ #category : 'calculating' }
PmoFlatShape >> perimeter [

	^ self subclassResponsibility
]
