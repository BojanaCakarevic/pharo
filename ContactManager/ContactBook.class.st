Class {
	#name : #ContactBook,
	#superclass : #Object,
	#instVars : [
		'contacts'
	],
	#category : #ContactManager
}

{ #category : #adding }
ContactBook >> addContact: aContact [
	contacts := contacts copyWith: aContact 
]

{ #category : #adding }
ContactBook >> contacts [
	^contacts 
]

{ #category : #adding }
ContactBook >> displayAllContacts [
	contacts do: [ :contact | 
		contact display ].
]

{ #category : #'as yet unclassified' }
ContactBook >> displayAllContactsSortedByName [
	 | sortedContacts |
	sortedContacts := contacts sorted: [ :contact1 :contact2 | contact1 firstName < contact2 firstName ].
	sortedContacts do: [ :contact | contact display ].
]

{ #category : #'as yet unclassified' }
ContactBook >> getContact: aFirstName [
	^contacts detect: [ :contact | contact firstName = aFirstName ] ifNone: [ nil ]
]

{ #category : #initialization }
ContactBook >> initialize [ 
	contacts := Array new.
]

{ #category : #removing }
ContactBook >> removeContact: aContact [
	contacts := contacts reject: [ :contact | contact = aContact  ]
]

{ #category : #'as yet unclassified' }
ContactBook >> updateFirstName: newFirstName forContact: aContact [ 
	(contacts includes: aContact) ifTrue: [ 
		aContact firstName: newFirstName. 
		]
]

{ #category : #'as yet unclassified' }
ContactBook >> updateLastName: newLastName forContact: aContact [ 
	(contacts includes: aContact) ifTrue: [ 
		aContact firstName: newLastName. 
		]
]

{ #category : #'as yet unclassified' }
ContactBook >> updatephoneNumber: newphoneNumber forContact: aContact [ 
	(contacts includes: aContact) ifTrue: [ 
		aContact firstName: newphoneNumber. 
		]
]
