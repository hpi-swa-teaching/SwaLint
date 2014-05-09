tests
offeredTestsData

	^ {
		{#dataClass. 'Data Class'. 'A Data Class is a dumb dataholder. Functionality is probably implemented in other classes which breaks with design principles like encapsulation and data hiding.'}.
		{#godClass. 'God Class'. 'A God Class is a class that centralizes intelligence. Detected classes heavily access data of simpler classes, are large, complex and have a lot of non-communicative behaviour.'}.
		{#brainMethod. 'Brain Method'. 'Brain Methods centralize the functionality of a class. They are overlong methods, which are harder to understand and debug, and practically impossible to reuse.'}.
		"{#intenseCoupling. 'Intense Coupling'. ''}."
	}