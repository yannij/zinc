accessing-session
githubSessionFor: aRequest
	^ aRequest session 
		attributeAt: 'github-session' 
		ifAbsentPut: [ ZnOAuth2Session github: self githubData ]