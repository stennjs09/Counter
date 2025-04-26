Class {
	#name : 'EarthMap',
	#superclass : 'Object',
	#instVars : [
		'countries'
	],
	#category : 'EarthMap',
	#package : 'EarthMap'
}

{ #category : 'accessing' }
EarthMap >> importCountryFromXMLNode: aXMLElement [
 countries add: (EarthMapCountry new fromXML: aXMLElement)
]

{ #category : 'initialization' }
EarthMap >> initialize [
 super initialize.
	 countries := OrderedCollection new
]

{ #category : 'accessing' }
EarthMap >> openPopulatedCanvas [
 self populatedCanvas open
]

{ #category : 'accessing' }
EarthMap >> populatedCanvas [
 ^ RSCanvas new
 addAll: (countries collect: [ :country | country asRSShape ]);
 @ RSCanvasController;
 yourself
]

{ #category : 'accessing' }
EarthMap >> xmlTreeFromFile: aFileName [
 ^ aFileName asFileReference readStreamDo: [ :stream |
 (XMLDOMParser parse: stream) document ]
]
