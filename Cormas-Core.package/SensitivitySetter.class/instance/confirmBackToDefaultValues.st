actions
confirmBackToDefaultValues
	
	| text |
	text := 'Some attributes have been changed. OK to set the default values? \ \'
		withCRs asText emphasizeAllWith: #bold.
	(self classAttribValue_List list
		select: [:defAttrib | defAttrib hasBeenModified])
		do:
			[:defAttrib | 
			text := text
				, (defAttrib targetClass name asText emphasizeAllWith: #(#italic)).
			text := text , ' - ' asText.
			text := text
				,
					(defAttrib targetAttribute asString asText emphasizeAllWith: #(#italic)).
			text := text , '    --> ' asText.
			text := text
				,
					(defAttrib currentValueAsString asText
						emphasizeAllWith: #color -> ColorValue red) asText.
			text := text , '\' withCRs asText].
	^self cormas confirm: text asText