testing
isObsolete

	^ ((super isObsolete or: [provider isObsolete]) or: [(provider respondsTo: getter) not]) or: [(provider respondsTo: setter) not]