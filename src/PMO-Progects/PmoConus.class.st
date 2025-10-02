Class {
	#name : 'PmoConus',
	#superclass : 'PmoConicalShape',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'instance creation' }
PmoConus class >> newWithR: radius andH: height [

	^ self basicNew
		  base: (PmoCircle newWithR: radius);
		  height: height
]

{ #category : 'initialization' }
PmoConus >> initialize [

	base := PmoCircle new.
	height := 1
]

{ #category : 'calculating' }
PmoConus >> sideArea [

	| lateral radius |
	radius := base r.
	lateral := (radius squared + height squared) sqrt.
	^ Float pi * radius * lateral
]
