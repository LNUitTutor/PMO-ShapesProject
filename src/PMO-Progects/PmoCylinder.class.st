Class {
	#name : 'PmoCylinder',
	#superclass : 'PmoDirectShape',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'instance creation' }
PmoCylinder class >> newWithR: radius andH: height [

	^ self basicNew
		  base: (PmoCircle newWithR: radius);
		  height: height
]

{ #category : 'initialization' }
PmoCylinder >> initialize [

	base := PmoCircle new.
	height := 1
]
