Class {
	#name : 'PmoConicalShape',
	#superclass : 'PmoVolumeShape',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'calculating' }
PmoConicalShape >> totalArea [

	^ self baseArea + self sideArea 
]

{ #category : 'calculating' }
PmoConicalShape >> volume [

	^ self baseArea * self height / 3
]
