save
setCAVfrom: fileContent
	
	| aCAV |
	self classAttribValue_List list
		do:
			[:cav | 
			cav initValue: nil.
			cav finalValue: nil.
			cav randomType: nil.
			cav repetitions: nil.
			cav hasBeenModified: false].
	fileContent
		do:
			[:line | 
			aCAV := self classAttribValue_List list
				detect:
					[:cav | 
					cav targetClass name asString = line first
						and: [cav targetAttribute asString = (line at: 2)]]
				ifNone: [nil].
			aCAV isNil
				ifFalse:
					[aCAV currentValueAsString: (line at: 3).
					aCAV initValue: (line at: 4).
					aCAV finalValue: (line at: 5).
					aCAV randomType: (line at: 6).
					aCAV repetitions: (line at: 7)]]