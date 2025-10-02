Class {
	#name : 'PmoRectangleTest',
	#superclass : 'TestCase',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'tests' }
PmoRectangleTest >> testArea [

	| rect |
	rect := PmoRectangle newWithA: 5 andB: 10.
	self assert: rect area equals: 50
]

{ #category : 'tests' }
PmoRectangleTest >> testCreation [

	| r |
	r := PmoRectangle newWithA: 5 andB: 4.
	self assert: r a equals: 5.
	self assert: r b equals: 4
]

{ #category : 'tests' }
PmoRectangleTest >> testInitialize [

| r |
r := PmoRectangle new.
self assert: r a equals: 1.
self assert: r b equals: 2
]

{ #category : 'tests' }
PmoRectangleTest >> testPerimeter [

	| rect |
	rect := PmoRectangle newWithA: 5 andB: 10.
	self assert: rect perimeter equals: (5 + 10) * 2
]
