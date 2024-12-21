private
isMessageOutOfSync: message

	^ (self resultsForTestAndClassSelectionAndMessage: message) anySatisfy: [:result | result isOutOfSync]