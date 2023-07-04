Class {
	#name : #Contact,
	#superclass : #Object,
	#instVars : [
		'firstName',
		'lastName',
		'phoneNumber'
	],
	#category : #ContactManager
}

{ #category : #'as yet unclassified' }
Contact >> display [
	Transcript show: 'First Name: ', firstName; cr.
	Transcript show: 'Last Name: ', lastName ; cr.
	Transcript show: 'Phone Number: ', phoneNumber ; cr.
]

{ #category : #'as yet unclassified' }
Contact >> fistName [
^firstName 
]

{ #category : #'as yet unclassified' }
Contact >> fistName: aFirstName [
^firstName := aFirstName  
]

{ #category : #'as yet unclassified' }
Contact >> lastName [
^lastName 
]

{ #category : #'as yet unclassified' }
Contact >> lastName: aLastName [
^lastName := aLastName  
]

{ #category : #'as yet unclassified' }
Contact >> phoneNumber [
^phoneNumber  
]

{ #category : #'as yet unclassified' }
Contact >> phoneNumber: aPhoneNumber [
^phoneNumber := aPhoneNumber   
]
