tests
offeredTestsData

	^ {
		{#accessToForeignData. 'Access to Foreign Data [ATFD]'. 'The number accessed attributes of foreign classes.'}.
		{#avgLOCperMethod. 'Average LOC per Method'. 'Answer the average lines of code per method of a class.'}.
		{#weightedMethodCount. 'Weighted method count [WMC]'. 'Answer the weighted method count of a class based on its total CYCLO' }.
		{#classLOC. 'LOC of a class [LOC]'. 'Sum up the lines of code of a class.'}.
		{#numberOfMethods. 'Number of methods [NOM]'. 'Answer the total number of methods in a class'}.
		{#numberOfClassMethods. 'Number of Class Methods [NOcM]'. 'Answer the number of class methods of a class.'}.
		{#numberOfInstanceMethods. 'Number of Instance Methods [NOiM]'. 'Answer the number of instance methods of a class.'}.
		{#numberOfAccessorMethods. 'Number of Accessor Methods [NOAM]'. 'Answer the number of accessor methods of a class.'}.
		{#heightOfInheritanceTree. 'Height of Inheritance Tree [HIT]'. 'Answer the length of the path from a class to its deepest subclass.'}.
		{#baseClassOverridingRatio. 'Base Class Overriding Ratio [BOvR]'. 'Answer the number of methods overriding methods in the superclass divided by the total number of methods defined in a class.'}.
		{#numberOfAddedServices. 'Number of Added Services [NAS]'. 'Answer the number of methods of a class that are not overridden or specialized from the ancestor classes.'}.
		{#tightClassCohesion. 'Tight Class Cohesion [TCC]'. 'Number of methodpairs that access similar instance variables .'}.
		{#newlyAddedServicesRatio. 'Percentage of Newly Added Services [PNAS]'. 'Answer the number of methods of a class that are not overridden or specialized from the ancestors, divided by the total number of methods.'}.
		{#weightOfClass. 'Weight of Class [WOC]'. 'The number of "functional" methods divided by the total number of members.'}.
		{#classAMW. 'AMW of a class [AWM]'. 'Average Method Weight'}.
		{#classNAS. 'NAS of a class [NAS]'. 'Number of added Services'}.
		{#classPNAS. 'PNAS of a class [PNAS]'. 'Percentage of newly added Services'}.
	}