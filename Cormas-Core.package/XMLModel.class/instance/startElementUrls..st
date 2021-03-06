private-sax
startElementUrls: someAttributes
	
	| att_val1 att_val2 urls |
	att_val1 := nil.
	att_val2 := nil.
	someAttributes
		do:
			[:attribute | 
			(attribute key isLike: 'val1')
				ifTrue: [att_val1 := attribute value]
				ifFalse:
					[(attribute key isLike: 'val2') ifTrue: [att_val2 := attribute value]]].
	(att_val1 isNil or: [att_val2 isNil])
		ifTrue:
			[self errorHandler
				fatalError:
					(InvalidSignal new
						messageText:
							#requiredAttributesNotPresent << #xml >>
									'urls tag must have attributes called val1 and val2')].
	urls := Array with: att_val1 with: att_val2.
	currentView at: #seuil put: urls