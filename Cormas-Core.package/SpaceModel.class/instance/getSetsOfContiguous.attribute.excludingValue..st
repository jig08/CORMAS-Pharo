private - regular polygons
getSetsOfContiguous: baseEntity attribute: attributeName excludingValue: aValue
	"Return a collection of sets of contiguous components holding the same attributeName value"
	
	^self
		getSetsOfContiguous: baseEntity
		conditionalBlocks:
			(Array
				with:
					[:be :getAttribute :x | 
					(be perform: getAttribute) isNil not
						and: [(be perform: getAttribute) ~= aValue]]
				with:
					[:be :seed :getAttribute :x | (be perform: getAttribute) = (seed perform: getAttribute)]
				with:
					[:be :setOfContiguousBe :seed :getAttribute :x | 
					(be perform: getAttribute) = (seed perform: getAttribute)
						and: [(setOfContiguousBe includes: be) not]])
		conditionalArguments: (Array with: attributeName with: nil)