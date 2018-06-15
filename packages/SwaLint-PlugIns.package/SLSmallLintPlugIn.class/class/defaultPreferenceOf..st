defaults
defaultPreferenceOf: aTestSymbol
	^ Dictionary new
		at: #CollectionCopyEmpty put: false;
		at: #DefinesEqualNotHash put: false;
		at: #EquivalentSuperclassMethods put: false;
		at: #ExcessiveInheritance put: false;
		at: #ExcessiveVariables put: false;
		at: #InstVarInSubclasses put: false;
		at: #JustSendsSuper put: false;
		at: #MethodHasNoTimeStamp put: false;
		at: #MissingSubclassResponsibility put: false;
		at: #MissingSuperSends put: false;
		at: #RefersToClass put: false;
		at: #SentNotImplemented put: false;
		at: #UnpackagedCode put: false;
		at: #VariableNotDefined put: false;
		at: #VariableReferencedOnce put: false;
		at: #AsOrderedCollectionNotNeeded put: false;
		at: #AssignmentWithoutEffect put: false;
		at: #CollectSelectNotUsed put: false;
		at: #CollectionMessagesToExternalObject put: false;
		at: #FileBlocks put: false;
		at: #GuardingClause put: false;
		at: #LiteralArrayCharacters put: false;
		at: #PlatformDependentUserInteraction put: false;
		at: #SendsUnknownMessageToGlobal put: false;
		at: aTestSymbol ifAbsent: true