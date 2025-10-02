Class {
	#name : 'PmoCircle',
	#superclass : 'PmoFlatShape',
	#instVars : [
		'r'
	],
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'calculating' }
PmoCircle >> area [

	^ Float pi * r squared 
]

{ #category : 'calculating' }
PmoCircle >> perimeter [

	^ Float pi * 2.0 * r
]
