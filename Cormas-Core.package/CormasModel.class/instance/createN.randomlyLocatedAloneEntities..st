+ instance creation - agents & objects
createN: aNumber randomlyLocatedAloneEntities: aClass
	"Return a collection of aNumber of entities of aClass for wich the 'init' method has been send.
	The new entities are randomly located on the free cells of the grid.
	ex: self createN: 10 randomlyLocatedAloneEntities: Predator"
	
	self createN: aNumber randomlyLocatedAloneEntities: aClass initMethod:
			#init arguments: #()