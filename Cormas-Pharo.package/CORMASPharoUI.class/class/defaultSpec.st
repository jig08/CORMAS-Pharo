specs
defaultSpec 
	<spec: #default>
	^ SpecLayout composed

		newColumn: [ :tcol|
					tcol
						add: #label height: self toolbarHeight;
						add: #menu height: self toolbarHeight;
						add: #diagram;
						add: #manager height: 100].