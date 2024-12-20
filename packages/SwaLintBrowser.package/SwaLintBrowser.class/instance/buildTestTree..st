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
		filterMode: #all;
		
		menu: #testNodeMenu:;
		
		autoExpand: #testTreeExpanded;
		
		yourself