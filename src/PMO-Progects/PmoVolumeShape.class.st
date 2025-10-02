Class {
	#name : 'PmoVolumeShape',
	#superclass : 'Object',
	#instVars : [
		'base',
		'height'
	],
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'accessing' }
PmoVolumeShape >> base [

	^ base
]

{ #category : 'accessing' }
PmoVolumeShape >> base: aFlatShape [

	(aFlatShape isKindOf: PmoFlatShape) ifFalse: [
		^ self error: 'The base should be a TFlatShape' ].
	base := aFlatShape
]

{ #category : 'calculating' }
PmoVolumeShape >> baseArea [

	^ base area
]

{ #category : 'accessing' }
PmoVolumeShape >> height [

	^ height
]

{ #category : 'accessing' }
PmoVolumeShape >> height: aNumber [

	height := aNumber max: 0.1
]

{ #category : 'initialization' }
PmoVolumeShape >> initialize [

	^ self subclassResponsibility
]

{ #category : 'printing' }
PmoVolumeShape >> printOn: aStream [

aStream
		nextPutAll: (self className allButFirst: 3);
		nextPut: ${;
		nextPutAll: 'base: ';
		print: self base;
		nextPutAll: ', height: ';
		print: self height;
		nextPut: $}
]

{ #category : 'calculating' }
PmoVolumeShape >> sideArea [

	^ self subclassResponsibility
]

{ #category : 'calculating' }
PmoVolumeShape >> totalArea [

	^ self subclassResponsibility
]

{ #category : 'calculating' }
PmoVolumeShape >> volume [

	^ self subclassResponsibility
]
