aspects
att1
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^att1 isNil
		ifTrue: [att1 := String new asValue]
		ifFalse: [att1]