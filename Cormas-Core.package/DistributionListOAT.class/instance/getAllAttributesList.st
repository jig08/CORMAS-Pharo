setParameters
getAllAttributesList
	
	| aList defaultParameters cav |
	aList := List new.
	defaultParameters := self getDefaultParametersValues.
	defaultParameters := defaultParameters
		select: [:coll | coll first subclasses isEmpty].
	defaultParameters
		do:
			[:coll | 
			cav := ClassAttributeValueAnalysisDistribution
				newClass: coll first
				attribute: (coll at: 2)
				value: (coll at: 3).
			aList add: cav].
	self purgeClassAttribValue: aList.
	^aList