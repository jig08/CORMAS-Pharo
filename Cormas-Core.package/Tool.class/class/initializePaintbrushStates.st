tool states
initializePaintbrushStates
	"This method was automatically generated by the HotDraw ToolStateMachineEditor.
	To edit this method, evaluate the comment below"
	"| states transitions stateTable |
	states := ((Core.OrderedCollection new) add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Hot Paint Erase Tool'; instVarAt: 3 put: '[:tool :event | ]'; instVarAt: 4 put: (Core.Point x: 93 y: 35); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Hot Paint Paintbrush Tool'; instVarAt: 3 put: '[:tool :event | ]'; instVarAt: 4 put: (Core.Point x: 289 y: 26); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Initial Erase State (HotPaint)'; instVarAt: 3 put: '[:tool :event | 
| figure |
figure := tool figureAtEvent: event.
tool valueAt: #color put: figure fillColor.
figure fillColor: ColorValue white.
]'; instVarAt: 4 put: (Core.Point x: 75 y: 114); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Start painting (HotPaint)'; instVarAt: 3 put: (Text string: '[:tool :event | 
| currentPoint figure |
figure := tool figureAtEvent: event.
currentPoint := tool cursorPointFor: event.
figure paintAt: currentPoint.
tool valueAt: #figure put: figure.
tool valueAt: #lastPoint put: currentPoint
]' runs: (Core.RunArray runs: #(231) values: #(nil))); instVarAt: 4 put: (Core.Point x: 153 y: 175); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Move brush (HotPaint)'; instVarAt: 3 put: (Text string: '[:tool :event | 
| currentPoint |
currentPoint := tool cursorPointFor: event.
(tool valueAt: #figure) paintFrom: (tool valueAt: #lastPoint)
	to: currentPoint.
tool valueAt: #lastPoint put: currentPoint
]' runs: (Core.RunArray runs: #(203) values: #(nil))); instVarAt: 4 put: (Core.Point x: 282 y: 250); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'End painting (HotPaint)'; instVarAt: 3 put: (Text string: '[:tool :event | 
| figure |
figure := tool valueAt: #figure.
figure paintAt: (tool valueAt: #lastPoint).
figure fillColor: (tool valueAt: #color)]' runs: (Core.RunArray runs: #(146) values: #(nil))); instVarAt: 4 put: (Core.Point x: 97 y: 326); instVarAt: 5 put: true; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Initial Paint State (HotPaint)'; instVarAt: 3 put: '[:tool :event | 
tool valueAt: #color put: (tool figureAtEvent: event) fillColor.
]'; instVarAt: 4 put: (Core.Point x: 285 y: 116); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Menu'; instVarAt: 3 put: '[:tool :event | ]'; instVarAt: 4 put: (Core.Point x: 40 y: 184); instVarAt: 5 put: false; instVarAt: 6 put: true; yourself); yourself).
	stateTable := Dictionary new.
	states do: [:each | stateTable at: each name put: each].

	transitions := OrderedCollection new.
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Hot Paint Erase Tool'); to: (stateTable at: 'Initial Erase State (HotPaint)'); type: (Refactory.HotDraw.FigureTransitionType basicNew instVarAt: 1 put: #redButtonPress; instVarAt: 2 put: ((Core.Array new: 1) at: 1 put: Refactory.HotDraw.CanvasFigure; yourself); yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 177.75 y: 61.8125); add: (Core.Point x: 197 y: 75); add: (Core.Point x: 170.422 y: 113.391); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Move brush (HotPaint)'); to: (stateTable at: 'End painting (HotPaint)'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonRelease; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 322.656 y: 275.5); add: (Core.Point x: 201.355 y: 326.395); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Move brush (HotPaint)'); to: (stateTable at: 'Move brush (HotPaint)'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #mouseMove; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 417.812 y: 258.938); add: (Core.Point x: 445 y: 258); add: (Core.Point x: 445 y: 278); add: (Core.Point x: 409.922 y: 271.297); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Start painting (HotPaint)'); to: (stateTable at: 'Move brush (HotPaint)'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #mouseMove; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 250.297 y: 201.547); add: (Core.Point x: 325.802 y: 249.243); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Start painting (HotPaint)'); to: (stateTable at: 'End painting (HotPaint)'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonRelease; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 220.5 y: 202.875); add: (Core.Point x: 174.363 y: 325.038); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Hot Paint Paintbrush Tool'); to: (stateTable at: 'Initial Paint State (HotPaint)'); type: (Refactory.HotDraw.FigureTransitionType basicNew instVarAt: 1 put: #redButtonPress; instVarAt: 2 put: ((Core.Array new: 1) at: 1 put: Refactory.HotDraw.CanvasFigure; yourself); yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 380.437 y: 52.8125); add: (Core.Point x: 404 y: 75); add: (Core.Point x: 378.406 y: 115.359); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Hot Paint Erase Tool'); to: (stateTable at: 'Menu'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #yellowButtonPress; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 137.125 y: 61.8125); add: (Core.Point x: 59 y: 87); add: (Core.Point x: 63.9609 y: 183.242); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Hot Paint Paintbrush Tool'); to: (stateTable at: 'Menu'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #yellowButtonPress; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 303.32 y: 29.4531); add: (Core.Point x: 215 y: 9); add: (Core.Point x: 84 y: 10); add: (Core.Point x: 40 y: 91); add: (Core.Point x: 50.9141 y: 184.266); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Initial Erase State (HotPaint)'); to: (stateTable at: 'Start painting (HotPaint)'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #immediate; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 172.953 y: 140.82); add: (Core.Point x: 208.845 y: 173.994); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Initial Paint State (HotPaint)'); to: (stateTable at: 'Start painting (HotPaint)'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #immediate; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 333.273 y: 142.598); add: (Core.Point x: 256.774 y: 174.383); yourself); yourself).
	ToolStateMachineEditor openWithStates: states connections: transitions"
	
	Tool states
		at: 'Hot Paint Erase Tool'
		put:
			(ToolState
				name: 'Hot Paint Erase Tool'
				command: [:tool :event | ]).
	Tool states
		at: 'Hot Paint Paintbrush Tool'
		put:
			(ToolState
				name: 'Hot Paint Paintbrush Tool'
				command: [:tool :event | ]).
	Tool states
		at: 'Initial Erase State (HotPaint)'
		put:
			(ToolState
				name: 'Initial Erase State (HotPaint)'
				command:
					[:tool :event | 
					| figure |
					figure := tool figureAtEvent: event.
					tool
						valueAt: #color
						put: figure fillColor.
					figure fillColor: ColorValue white]).
	Tool states
		at: 'Start painting (HotPaint)'
		put:
			(ToolState
				name: 'Start painting (HotPaint)'
				command:
					[:tool :event | 
					| currentPoint figure |
					figure := tool figureAtEvent: event.
					currentPoint := tool cursorPointFor: event.
					figure paintAt: currentPoint.
					tool valueAt: #figure put: figure.
					tool valueAt: #lastPoint put: currentPoint]).
	Tool states
		at: 'Move brush (HotPaint)'
		put:
			(ToolState
				name: 'Move brush (HotPaint)'
				command:
					[:tool :event | 
					| currentPoint |
					currentPoint := tool cursorPointFor: event.
					(tool valueAt: #figure)
						paintFrom: (tool valueAt: #lastPoint)
						to: currentPoint.
					tool valueAt: #lastPoint put: currentPoint]).
	Tool states
		at: 'End painting (HotPaint)'
		put:
			(EndToolState
				name: 'End painting (HotPaint)'
				command:
					[:tool :event | 
					| figure |
					figure := tool valueAt: #figure.
					figure paintAt: (tool valueAt: #lastPoint).
					figure fillColor: (tool valueAt: #color)]).
	Tool states
		at: 'Initial Paint State (HotPaint)'
		put:
			(ToolState
				name: 'Initial Paint State (HotPaint)'
				command:
					[:tool :event | 
					tool
						valueAt: #color
						put: (tool figureAtEvent: event) fillColor]).
	(Tool stateFor: 'Initial Paint State (HotPaint)')
		immediate:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Start painting (HotPaint)');
				yourself).
	(Tool stateFor: 'Move brush (HotPaint)')
		redButtonRelease:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'End painting (HotPaint)');
				yourself).
	(Tool stateFor: 'Move brush (HotPaint)')
		mouseMove:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Move brush (HotPaint)');
				yourself).
	(Tool stateFor: 'Start painting (HotPaint)')
		mouseMove:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Move brush (HotPaint)');
				yourself).
	(Tool stateFor: 'Start painting (HotPaint)')
		redButtonRelease:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'End painting (HotPaint)');
				yourself).
	(Tool stateFor: 'Initial Erase State (HotPaint)')
		immediate:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Start painting (HotPaint)');
				yourself).
	(Tool stateFor: 'Hot Paint Paintbrush Tool')
		yellowButtonPress:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Menu');
				yourself).
	(Tool stateFor: 'Hot Paint Paintbrush Tool')
		redButtonPress:
			((FigureTransitionTable new)
				on: CanvasFigure
					goto: (Tool stateFor: 'Initial Paint State (HotPaint)');
				yourself).
	(Tool stateFor: 'Hot Paint Erase Tool')
		yellowButtonPress:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Menu');
				yourself).
	(Tool stateFor: 'Hot Paint Erase Tool')
		redButtonPress:
			((FigureTransitionTable new)
				on: CanvasFigure
					goto: (Tool stateFor: 'Initial Erase State (HotPaint)');
				yourself)