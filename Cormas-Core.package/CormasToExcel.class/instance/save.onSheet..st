write
save: anOrderedCollection onSheet: numOrName
	"Fill a line in the Excel Application. The ordered collection contains numbers"
	
	| sheet |
	numOrName isString
		ifTrue: [sheet := self sheets detect: [:s | s name = numOrName]]
		ifFalse: [sheet := self sheets at: numOrName].	"Get the wright worksheet in the workbook."
	sheet saveValues: anOrderedCollection