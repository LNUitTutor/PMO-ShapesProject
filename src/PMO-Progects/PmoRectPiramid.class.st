"
Клас моделює прямокутну піраміду. Вершина піраміди проектується в точку перетину діагоналей основи
"
Class {
	#name : 'PmoRectPiramid',
	#superclass : 'PmoConicalShape',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'initialization' }
PmoRectPiramid >> initialize [

	base := PmoRectangle new.
	height := 1
]

{ #category : 'private' }
PmoRectPiramid >> lateralA [
^ ((base b * 0.5)squared + height squared) sqrt 
]

{ #category : 'private' }
PmoRectPiramid >> lateralB [
^ ((base a * 0.5)squared + height squared) sqrt 
]

{ #category : 'calculating' }
PmoRectPiramid >> sideArea [

	^ (base a * self lateralA) + (base b * self lateralB)
]
