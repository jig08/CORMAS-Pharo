aspects
name
	"This method was generated by UIDefiner.  Any edits made here
	may be lost whenever methods are automatically defined.  The
	initialization provided below may have been preempted by an
	initialize method."
	
	^name isNil
		ifTrue: [name := String new asValue]
		ifFalse: [name]