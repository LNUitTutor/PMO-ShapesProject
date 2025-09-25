Class {
	#name : 'Circle',
	#superclass : 'FlatShape',
	#instVars : [
		'r'
	],
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'calculating' }
Circle >> area [

	^ Float pi * r squared 
]

{ #category : 'calculating' }
Circle >> perimeter [

	^ Float pi * 2.0 * r
]
