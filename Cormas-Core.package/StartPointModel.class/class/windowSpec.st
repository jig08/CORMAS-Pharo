interface specs
windowSpec
	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"
	
	<resource: #canvas>
	^#(FullSpec 
		#window: #(WindowSpec 
			#label: 'Unlabeled Canvas' 
			#min: #(Point 40 20) 
			#max: #(Point 0 0) 
			#bounds: #(Rectangle 1480 525 1535 557) 
			#colors: #(LookPreferences 
				#setForegroundColor: #(ColorValue #black) 
				#setBackgroundColor: #(ColorValue #black) 
				#setSelectionForegroundColor: #(ColorValue #black) 
				#setSelectionBackgroundColor: #(ColorValue #black)) 
			#isEventDriven: true) 
		#component: #(SpecCollection 
			#collection: #(#(LabelSpec 
				#layout: #(Point 2 4) 
				#name: #Label1 
				#colors: #(LookPreferences 
					#setForegroundColor: #(ColorValue #paleGreen) 
					#setBackgroundColor: #(ColorValue #black)) 
				#label: 'Start' 
				#style: #systemDefault))))