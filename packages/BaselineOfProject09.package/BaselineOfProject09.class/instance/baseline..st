baseline
baseline: spec 
	<baseline> 
	spec
		for: #'common' 
		do: [
			spec
				package: 'AST-Core';
				package: 'Refactoring-Critics';
				package: 'SwaLint-Preferences';
				package: 'SwaLint-Core' with: [spec requires: #('SwaLint-Preferences' 'AST-Core')];
				package: 'SwaLint-PlugIns' with: [spec requires:
					#('SwaLint-Preferences' 'SwaLint-Core' 'AST-Core')];
				package: 'SwaLint-TestClasses';
				package: 'SwaLint-Tests' with: [spec requires:
					#('SwaLint-Core' 'SwaLint-Preferences' 'SwaLint-PlugIns'
														'SwaLint-TestClasses' 'AST-Core' 'Refactoring-Critics')];
				yourself.
			spec
				group: 'default' with: #('SwaLint-Core');
				group: 'AST' with: #('AST-Core');
				group: 'Preferences' with: #('SwaLint-Preferences');
				group: 'PlugIns' with: #('SwaLint-PlugIns');
				group: 'TestClasses' with: #('SwaLint-TestClasses');
				group: 'Tests' with: #('SwaLint-Tests');
				group: 'TravisCI' with: #('Tests');
				yourself]

"	<baseline>
	spec 
		for: #'common'
		do: [
			spec
				package: 'CCT-Core';
				package: 'CCT-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('CCT-Core');
				group: 'Tests' with: #('CCT-Tests');
				group: 'TravisCI' with: #('Tests') ]."