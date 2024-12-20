toolbuilder
buildTestTree: builder

	^ builder pluggableTreeSpec new
		name: #testTree;
		model: self;
		
		roots: #testRootPaths;
		label: #labelForTestNodePath:;
		getChildren: #childrenForTestNodePath:;
		getSelected: #selectedTestNodePath;
		setSelected: #selectTestNodePath:;
		help: #helpForTestNode:;
		
		menu: #testNodeMenu:;
		
		in: [:spec |
			">= Squeak 6.1"
			(spec respondsTo: #filterMode:) ifTrue:
				[spec filterMode: #all].
			(spec respondsTo: #autoExpand:) ifTrue:
				[spec autoExpand: #testTreeExpanded]];
		
		yourself