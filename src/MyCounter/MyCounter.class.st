Class {
	#name : 'MyCounter',
	#superclass : 'Object',
	#instVars : [
		'counter'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
MyCounter >> counter [

	^ counter
]

{ #category : 'accessing' }
MyCounter >> counter: anObject [

	counter := anObject
]

{ #category : 'accessing' }
MyCounter >> decrement [
	counter := counter -1
]

{ #category : 'accessing' }
MyCounter >> increment [
	counter := counter +1
]
