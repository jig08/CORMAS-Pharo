baselines
baseline03: spec
	<version: '0.3-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/SergeStinckwich/CORMAS/main'.
			spec
				package: 'Cormas-Core';
				package: 'Cormas-HotDraw-Tools';
				package: 'Cormas-Model-ECEC';
				package: 'Cormas-Model-Conway';
				package: 'Cormas-Model-FireAutomata' ]