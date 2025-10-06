tests
smallLintTests
	"{#*Symbol. 'Name'. 'Description'. ... DefaultActive. }
	Symbol: at '*' 'small' will be inserted automatically.
	DefaultActive: If a test is active, it will be shown in the SmallLint category. The value can be changed in the preferences"
	
	self flag: #deprecate. "ct: Do we still need this?"
	{
			"BlockLintRule"
			{#AbstractClass. 'Abstract class'. 'References an abstract class'. false.}.
			{#AddRemoveDependents. 'Add- or RemoveDependent'. 'Number of addDependent: messages > removeDependent:'. true.}.
			{#BadMessage. 'Bad message'. 'Sends "questionable" message'. true.}.
			{#ClassInstVarNotInitialized. 'Class instance variable not initialized'. 'Has class instance variables but no initialize method'. true.}.
			{#ClassNameInSelector. 'Class name in selector'. 'Redundant class name in selector'. true.}.
			{#ClassNotReferenced. 'Class not referenced'. 'Class not referenced'. true.}.
			{#CollectionCopyEmpty. 'Collection copyEmpty'. 'Subclass of collection that has instance variable but doesn''t define copyEmpty'. false.}.
			{#DefinesEqualNotHash. 'Defines = but not hash'. 'If objects of a class redefine equality, then to work properly in hashed collections like Sets or Dictionaries they must also have a hash method that returns equal hashes for each pair of objects for which = returns true.'. true.}.
			{#EquivalentSuperclassMethods. 'Equivalent superclass methods'. 'Methods equivalently defined in superclass'. true}.
			{#ImplementedNotSent. 'Implemented not sent'. 'Methods implemented but not sent'. false.}.
			{#InstVarInSubclasses. 'Instance var in subclasses'. 'Instance variables defined in all subclasses'. true.}.
			{#JustSendsSuper. 'Just sends super'. 'Method just sends super message'. true.}.
			{#LiteralArrayContainsComma. 'Literal array contains a comma'. 'Literal array contains a #,'. true.}.
			{#LiteralArrayContainsDot. 'Literal array contains a dot'. 'Literal array contains a #''.'''. true.}.
			{#LiteralArrayContainsSuspiciousTrueFalseOrNil. 'Literal array contains a #true, #false, or #nil but the source doesn''t.'. 'With ANSI changes, #(true false nil) now is equal to {true. false. nil} not {#true. #false. #nil} as it used to be.
This may be a bug.'. true.}.
			{#LongMethods. 'Long methods'. 'Description'. false.}.
			{#MethodHasNoTimeStamp. 'Method has no timeStamp'. 'For proper change tracking, every method should have a timestamp.'. true.}.
			{#MethodSourceContainsLinefeeds. 'Method source contains linefeeds'. 'Squeak code should not contain linefeed characters.'. true.}.
			{#MissingSubclassResponsibility. 'Missing subclass responsibility'. 'Method defined in all subclasses, but not in superclass'. false.}.
			{#OnlyReadOrWritten. 'OnlyReadOrWritten'. 'Instance variables not read AND written'. true.}.
			{#OverridesSpecialMessage. 'OverridesSpecialMessage'. 'Overrides a "special" message'. true.}.
			{#OverridesSuper. 'Overrides Super'.  'Overrides super method without calling it'. false.}.
			{#RefersToClass. 'Refers to Class'. 'Refers to class name instead of "self class"'. true.}.
			{#ReturnsBooleanAndOther. 'Returns boolean and other'. 'Returns a boolean and non boolean'. true.}.
			{#SendsDifferentSuper. 'Sends different super message'. 'Sends different super message'. true.}.
			{#SentNotImplemented. 'Messages sent but not implemented'. 'Messages sent but not implemented'. true.}.
			{#SubclassResponsibilityNotDefined. 'Subclass responsibility not defined'. 'Subclass responsibility not defined'. true.}.
			{#SuperSends. 'Missing super sends in selected methods.'. 'Missing super sends in selected methods.'. true.}.
			{#SuperSendsNew. 'Sends super new initialize'. 'Sends super new initialize'. true.}.
			{#TempVarOverridesInstVar. 'Instance var overridden by temporary var'. 'Instance variable overridden by temporary variable'. true.}.
			{#TempsReadBeforeWritten. 'Temporaries read before written'. 'Temporaries read before written'. true.}.
			{#UndeclaredReference. 'References an undeclared variable'. 'References an undeclared variable'. true.}.
			{#UnreferencedVariables. 'Variables not referenced'. 'Variables not referenced'. true.}.
			{#UsesTrue. 'Uses True/False instead of true/false'. 'Uses True/False instead of true/false'. true.}.
			{#UtilityMethods. 'Utility methods'. 'Utility methods'. true.}.
			{#VariableAssignedLiteral. 'Variable is assigned a literal value'. 'Variable is only assigned a single literal value'. false.}.
			{#VariableReferencedOnce. 'Var referenced in one method and assigned first'. 'Variable referenced in only one method and always assigned first'. true.}.
			"ParseTreeLintRule"
			{#AsOrderedCollectionNotNeeded. 'asOrderedCollection/asArray not needed'. 'asOrderedCollection/asArray not needed'. true.}.
			{#AssignmentInBlock. 'Unnecessary assignment or return in block'. 'Unnecessary assignment or return in block'. true.}.
			{#AssignmentInIfTrue. 'Assignment to same variable and end of ifTrue:ifFalse: blocks'. 'Assignment to same variable and end of ifTrue:ifFalse: blocks'. true.}.
			{#AtIfAbsent. 'Uses at:ifAbsent: instead of at:ifAbsentPut:'. 'Uses at:ifAbsent: instead of at:ifAbsentPut:'. true.}.
			{#BooleanPrecedence. 'Uses A | B = C instead of A | (B = C)'. 'Uses A | B = C instead of A | (B = C)'. true.}.
			{#CodeCruftLeftInMethods. 'Debugging code left in methods'. 'Debugging code left in methods'. true.}.
			{#CollectSelectNotUsed. 'Doesn''t use the result of a collect:/select:'. 'Doesn''t use the result of a collect:/select:'. true.}.
			{#CollectionMessagesToExternalObject. 'Sends add:/remove: to external collection'. 'Sends add:/remove: to external collection'. true.}.
			{#CollectionProtocol. 'Uses do: instead of collect: or select:''s'. 'Uses do: instead of collect: or select:''s'. true.}.
			{#ConsistencyCheck. 'Uses "size = 0", "= nil",  or "at: 1" instead of "isEmpty",  "isNil", or "first"'. 'Uses "size = 0", "= nil",  or "at: 1" instead of "isEmpty",  "isNil", or "first"'. true.}.
			{#Contains. 'Uses detect:ifNone: instead of contains:'. 'Uses detect:ifNone: instead of contains:'. false.}.
			{#DetectContains. 'Uses do: instead of contains: or detect:''s'. 'Uses do: instead of contains: or detect:''s'. true.}.
			{#EndTrueFalse. 'Check for same statements at end of ifTrue:ifFalse: blocks'. 'Check for same statements at end of ifTrue:ifFalse: blocks'. true.}.
			{#EqualNotUsed. 'Doesn''t use the result of a =, ~=, etc.'. 'Doesn''t use the result of a =, ~=, etc.'. true.}.
			{#EqualsTrue. 'Unnecessary "= true"'. 'Unnecessary "= true"'. true.}.
			{#ExtraBlock. 'Block immediately evaluated'. 'Block immediately evaluated'. true.}.
			{#FileBlocks. 'Assignment inside unwind blocks should be outside.'. 'Assignment inside unwind blocks should be outside.'. true.}.
			{#GuardingClause.  'Guarding clauses'.  'Guarding clauses'. true.}.
			{#IfTrueBlocks. 'Non-blocks in ifTrue:/ifFalse: messages'. 'Non-blocks in ifTrue:/ifFalse: messages'. false.}.
			{#IfTrueReturns. 'ifTrue:/ifFalse: returns instead of and:/or:''s'. 'ifTrue:/ifFalse: returns instead of and:/or:''s'. true.}.
			{#LiteralArrayCharacters. 'Literal array contains only characters'. 'Literal array contains only characters'. true.}.
			{#MinMax. 'Uses ifTrue:/ifFalse: instead of min: or max:'. 'Uses ifTrue:/ifFalse: instead of min: or max:'. true.}.
			{#MissingTranslationsInMenus. 'Menus missing translations'. 'Menus missing translations'. true.}.
			{#MissingYourself. 'Possible missing "; yourself"'. 'Possible missing "; yourself"'. true.}.
			{#ModifiesCollection. 'Modifies collection while iterating over it'. 'Modifies collection while iterating over it'. true.}.
			{#Precedence. 'Inspect instances of "A + B * C" might be "A + (B * C)"'. 'Inspect instances of "A + B * C" might be "A + (B * C)"'. true.}.
			{#ReturnInEnsure. 'Contains a return in an ensure: block'. 'Contains a return in an ensure: block'. true.}.
			{#ReturnsIfTrue. 'Returns value of ifTrue:/ifFalse: without ifFalse:/ifTrue: block'. 'Returns value of ifTrue:/ifFalse: without ifFalse:/ifTrue: block'. true.}.
			{#SearchingLiteral. 'Uses or''s instead of a searching literal'. 'Uses or''s instead of a searching literal'. true.}.
			{#SendsDeprecatedMethodToGlobal. 'Sends a deprecated message to a known global'. 'Sends a deprecated message to a known global'. true.}.
			{#SendsUnknownMessageToGlobal. 'Sends unknown message to global'. 'Sends unknown message to global'. true.}.
			{#SizeCheck. 'Unnecessary size check'. 'Unnecessary size check'. true.}.
			{#StringConcatenation. 'String concatenation instead of streams'. 'String concatenation instead of streams'. true.}.
			{#ThreeElementPoint.  'Possible three element point (e.g., x @ y + q @ r)'.  'Possible three element point (e.g., x @ y + q @ r)'. true.}.
			{#ToDo. 'Uses to:do: instead of do:, with:do: or timesRepeat:'. 'Uses to:do: instead of do:, with:do: or timesRepeat:'. true.}.
			{#ToDoCollect. 'to:do: doesn''t use collect:'. 'to:do: doesn''t use collect:'. true.}.
			{#ToDoWithIncrement. 'to:do: loop also increments a counter'. 'to:do: loop also increments a counter'. true.}.
			{#UnnecessaryAssignment. 'Unnecessary assignment to a temporary variable'. 'Unnecessary assignment to a temporary variable'. true.}.
			{#UnoptimizedAndOr. 'Uses "(a and: [b]) and: [c]" instead of "a and: [b and: [c]]"'. 'Uses "(a and: [b]) and: [c]" instead of "a and: [b and: [c]]"'. true.}.
			{#UnoptimizedToDo.  'Uses (to:)do: instead of to:do:'.  'Uses (to:)do: instead of to:do:'. true.}.
			{#UsesAdd. 'Uses the result of an add: message'. 'Uses the result of an add: message'. true.}.
			{#WhileTrue. 'Uses whileTrue: instead of to:do:'. 'Uses whileTrue: instead of to:do:'. true.}.
			{#YourselfNotUsed. 'Doesn''t use the result of a yourself message'. 'Doesn''t use the result of a yourself message'. true.}.
	}.