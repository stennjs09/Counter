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
