tests
slimeTests
	"{#*Symbol. 'Name'. 'Description'. ... DefaultActive. }
	Symbol: at '*' 'slime' will be inserted automatically."
	

	 true ifFalse:[{
			"SlimeBlockLintRule"
			{#BasicNewInitializeMissing. '#basicNew initialize is missing'. '#initialize is not called implicitely when sending #new to an object in other Smalltalk dialects.'. }.
			{#CallAnswerWhileRendering. '#call:/#answer: while rendering'. '#call: and #answer: should only be used from callback code, not within the rendering code.'. }.
			{#ChangesStateWhileRendering. 'Changes state while rendering'. 'Application state should not be changed in the rendering code, use a callback to define state.'. }.
			{#DoesNotSendSuperInitialize. 'Does not send super'. 'Always send super when overriding specific hook methods.'. }.
			{#DontCallSuperInitialize. 'Don''t call super initialize'. 'Super initialize should not be called for direct subclasses of Object, as Object does not implement #initialize in other Smalltalk dialects.'. }.
			{#InstantiatesComponentWhileRendering. 'Instantiates component while rendering'. 'Components should only be instanciated in initialization-code, callbacks or through lazy initialization.'. }.
			{#SendsDeprecatedMessage. 'Sends deprecated message'. 'Deprecated selectors will be removed with the next release of Seaside.'. }.			
			{#UsesCurlyBraceArrays. 'Uses curly brace arrays'. 'Curly brace expressions are not portable accross different Smalltalk dialects.'. }.
			{#UsesLiteralByteArrays. 'Uses literal byte arrays'. 'Literal byte arrays are not portable accross different Smalltalk dialects.'. }.
			{#UsesNotPortableClass. 'Uses not portable class'. 'Some classes are not portable accross different Smalltalk dialects.'. }.
			
			"SlimeParseTreeLintRule"
			{#AvoidUnnecessaryWith. 'Avoid unnecessary #with:'. 'Sending #with: is only required if attributes are specified too.'. }.
			{#ExtractCallbackCodeToMethod. 'Extract callback code to separate method'. 'For clarity rendering code and callback code should not be mixed, extract the contents of the callback block to a separate method.'. }.
			{#FixCallbackTempsMissing. '#fixCallbackTemps possibly missing'. 'I don''t feel like explaining that here.'. }.
			{#SendsNotPortableMessage. 'Sends not portable message'. 'Some methods are not portable accross different Smalltalk dialects.'. }.
			{#SendsRenderContentOn. 'Sends #renderContentOn:'. 'Client code should never send #renderContentOn: directly but only #render:.'. }.
			{#UnnecessaryBlockPassedToBrush. 'Unnecessary block passed to brush'. 'Sending a block as argument to #with: is only needed when nesting brushes.'. }.
			{#UsesWrongRenderer. 'Uses the wrong renderer'. 'Within AJAX callbacks you need to use the renderer that is passed into the block, the renderer from the outer context is only valid during the rendering of the outer context.'. }.
			{#WithHasToBeLastMessageInCascade. '#with: has to be last message in cascade'. 'Sending #with: triggers serialization of the brush attributes, any attribute being specified afterwards has no effect.'. }.
	 	}].
	