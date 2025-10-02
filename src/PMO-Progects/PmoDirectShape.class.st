Class {
	#name : 'PmoDirectShape',
	#superclass : 'PmoVolumeShape',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'calculating' }
PmoDirectShape >> sideArea [

	^ self base perimeter * self height 
]

{ #category : 'calculating' }
PmoDirectShape >> totalArea [

	^ self baseArea * 2 + self sideArea 
]

{ #category : 'calculating' }
PmoDirectShape >> volume [

	^ self baseArea * self height 
]
