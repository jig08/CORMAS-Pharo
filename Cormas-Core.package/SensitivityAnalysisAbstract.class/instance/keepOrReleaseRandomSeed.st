simulation
keepOrReleaseRandomSeed
	
	self releaseRandomSeed value ifTrue: [Cormas initRandomSeed]