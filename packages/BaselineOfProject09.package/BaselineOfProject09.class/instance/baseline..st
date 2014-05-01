baseline
baseline: spec
	<baseline>
	spec 
		for: #'common'
		do: [
			spec
				package: 'CCT-Core';
				package: 'CCT-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('CCT-Core');
				group: 'Tests' with: #('CCT-Tests');
				group: 'TravisCI' with: #('Tests') ].