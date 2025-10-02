"
Клас моделює трикутну піраміду. Вершина піраміди проектується в центр вписаного в основу кола.
"
Class {
	#name : 'PmoTriPiramid',
	#superclass : 'PmoConicalShape',
	#category : 'PMO-Progects',
	#package : 'PMO-Progects'
}

{ #category : 'initialization' }
PmoTriPiramid >> initialize [

	base := PmoTriangle new.
	height := 1
]

{ #category : 'calculating' }
PmoTriPiramid >> sideArea [

	| radius apopheme perim |
	perim := self base perimeter.
	radius := self baseArea * 2 / perim.
	apopheme := (radius squared + height squared) sqrt.
	^ perim * apopheme * 0.5
]
