- accessing - methods & classes
availablePov
	"Purpose: returns the list of available pov methods
Return value: <OrderedCollection>"
	
	| collec |
	collec := OrderedCollection new.
	self withAllSuperclasses
		do:
			[:cl | 
			collec addAll: (cl organization listAtCategoryNamed: #pov).
			collec addAll: (cl organization listAtCategoryNamed: '* pov' asSymbol)].
	(self includesBehavior: SpatialEntitySet)
		ifTrue: [collec addFirst: #delimitors].
	collec addFirst: #nil.
	^collec