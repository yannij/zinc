initialize-release
initialize
	super initialize.
	self beOnlineAccessType.
	self beNonePrompt.
	self authorizationEndpoint: 'https://github.com/login/oauth/authorize'.
	self tokenEndpoint: 'https://github.com/login/oauth/access_token'.