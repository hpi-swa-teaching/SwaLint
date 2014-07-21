tests
offeredTestsData

	^ {
		{#dataClass. 'Data Class'. 'A Data Class is a dumb dataholder. Functionality is probably implemented in other classes which breaks with design principles like encapsulation and data hiding.'}.
		{#godClass. 'God Class'. 'A God Class is a class that centralizes intelligence. Detected classes heavily access data of simpler classes, are large, complex and have a lot of non-communicative behaviour.'}.
		{#brainMethod. 'Brain Method'. 'Brain Methods centralize the functionality of a class. They are overlong methods, which are harder to understand and debug, and practically impossible to reuse.'}.
		{#brainClass. 'Brain Class'. 'A Brain Class is a complex class that tends to accumulate an excessive amount of intelligence, usually in the form of several methods affected by Brain Method.'}.
		{#shotgunSurgery. 'Shotgun Surgery'. 'The detection of a Shotgun Surgery means that a change in the detected method implies many changes to a lot of different operations and classes.'}.
		{#significantDuplication. 'Significant Duplication'. 'A Significant Duplication is either a large standalone clone or a chain of exact clones considered to be one exact clone.'. nil. nil. true}.
		{#featureEnvy. 'Feature Envy'. 'The detection of Feature Envy means that the detected method accesses a lot of data of other classes. This might be a sign that the method was misplaced and that it should be moved to another class.'}.
		{#intensiveCoupling. 'Intensive Coupling'. 'The detection of Intensive Coupling means that the detected method is tied to many other operations, whereby these provider operations are dispersed only into one or a few classes.'}.
		{#dispersedCoupling. 'Dispersed Coupling'. 'The detection of Dispersed Coupling means that the detected method is tied to many other operations, whereby these provider operations are dispersed among many classes.'}.
		{#traditionBreaker. 'Tradition Breaker'. 'A Tradition Breaker is a Class that breaks the inherited "tradition". It provides a large set of services which are unrelated to those provided by its base class.'}
	}