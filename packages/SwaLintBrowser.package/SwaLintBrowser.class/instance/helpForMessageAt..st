accessing - toolbuilder
helpForMessageAt: index

	^ self helpForMessage: (self messages at: index ifAbsent: [^ nil])