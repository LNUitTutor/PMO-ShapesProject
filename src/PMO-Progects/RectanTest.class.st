Class {
	#name : 'RectanTest',
	#superclass : 'TestCase',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'tests' }
RectanTest >> testCreation [

	| r |
	r := Rect newWithA: 5 andB: 4.
	self assert: r a equals: 5.
	self assert: r b equals: 4
]

{ #category : 'tests' }
RectanTest >> testInitialize [

| r |
r := Rect new.
self assert: r a equals: 1.
self assert: r b equals: 2
]
