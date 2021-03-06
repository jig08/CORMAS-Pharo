tool states
initializeCanvasToolStates
	"This method was automatically generated by the HotDraw ToolStateMachineEditor.
	To edit this method, evaluate the comment below"
	"| states transitions stateTable |
	states := ((OrderedCollection new) add: (ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Create Origin/Corner Figure'; instVarAt: 3 put: '[:tool :event | ]'; instVarAt: 4 put: (Point x: 59 y: 197); instVarAt: 5 put: false; instVarAt: 6 put: true; yourself); add: (ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Hot Paint Canvas Tool'; instVarAt: 3 put: (Text string: '[:tool :event | 
tool valueAt: #class put: CanvasFigure.
tool cursor: Cursor origin]' runs: (RunArray runs: #(84) values: #(nil))); instVarAt: 4 put: (Point x: 193 y: 81); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Menu'; instVarAt: 3 put: '[:tool :event | ]'; instVarAt: 4 put: (Point x: 352 y: 199); instVarAt: 5 put: false; instVarAt: 6 put: true; yourself); yourself).
	stateTable := Dictionary new.
	states do: [:each | stateTable at: each name put: each].

	transitions := OrderedCollection new.
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Hot Paint Canvas Tool'); to: (stateTable at: 'Create Origin/Corner Figure'); type: (TransitionType basicNew instVarAt: 1 put: #redButtonPress; yourself); points: ((OrderedCollection new) add: (Point x: 211 y: 106); add: (Point x: 151 y: 197); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Hot Paint Canvas Tool'); to: (stateTable at: 'Menu'); type: (TransitionType basicNew instVarAt: 1 put: #yellowButtonPress; yourself); points: ((OrderedCollection new) add: (Point x: 295 y: 110); add: (Point x: 362 y: 200); yourself); yourself).
	ToolStateMachineEditor openWithStates: states connections: transitions"
	
	Tool states
		at: 'Hot Paint Canvas Tool'
		put:
			(ToolState
				name: 'Hot Paint Canvas Tool'
				command:
					[:tool :event | 
					tool valueAt: #class put: CanvasFigure.
					tool cursor: Cursor origin]).
	(Tool stateFor: 'Hot Paint Canvas Tool')
		redButtonPress:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Create Origin/Corner Figure');
				yourself).
	(Tool stateFor: 'Hot Paint Canvas Tool')
		yellowButtonPress:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Menu');
				yourself)