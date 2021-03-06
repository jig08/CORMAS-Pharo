procedures
histogramInPercOf: indiData withClasses: classesSet
	
	| dataSet dataSetInPerc tot |
	dataSet := self histogramOf: indiData withClasses: classesSet.
	dataSetInPerc := OrderedCollection new.
	tot := dataSet
		inject: 0
		into: [:subTotal :next | subTotal + next first].
	dataSet
		do:
			[:i | 
			dataSetInPerc
				add:
					(Array
						with: i first / tot * 100
						with: i last)].
	^dataSetInPerc