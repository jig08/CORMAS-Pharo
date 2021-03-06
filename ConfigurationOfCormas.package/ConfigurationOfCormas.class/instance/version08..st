versions
version08: spec
	<version: '0.8' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.8'.
		spec author: 'SergeStinckwich'.
		spec timestamp: '4/2/2015 21:43'.
		spec 
			package: 'Cormas-Core' with: 'Cormas-Core-SergeStinckwich.46';
			package: 'Cormas-HotDraw-Tools' with: 'Cormas-HotDraw-Tools-SergeStinckwich.5';
			package: 'Cormas-Tests-Core' with: 'Cormas-Tests-Core-SergeStinckwich.6';
			package: 'Cormas-Model-ECEC' with: 'Cormas-Model-ECEC-SergeStinckwich.5';
			package: 'Cormas-Model-Conway' with: 'Cormas-Model-Conway-SergeStinckwich.5';
			package: 'Cormas-Model-FireAutomata' with: 'Cormas-Model-FireAutomata-SergeStinckwich.6'. ].
