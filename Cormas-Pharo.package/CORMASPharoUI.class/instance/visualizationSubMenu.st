as yet unclassified
visualizationSubMenu 
	
	|methods|
	methods := self collectAtttributeSelectors: CMECECVegetationUnit withTag: #accessing.
	
	^ MenuModel new
		addGroup: [ :group |
			methods do: [ :m | 
			group addItem: [ :item |
				item
					name: m asString;
					icon: (self iconNamed: #nautilusIcon);
					shortcut: $o meta;
					action: [ self visualize: self aModel 
											on: #theCMECECVegetationUnits
											with: #biomass.  ] ]
									]
				].