responses
ssoGithubCallback: request

	| githubSession |
	
	(self isOAuth2Callback: request)
		ifFalse: [ ^ self generateInvalidCallbackRequest ].

	githubSession := self githubSessionFor: request.
	githubSession handleAuthenticationCallback: request uri query.

	^ ZnResponse redirect: 'sso-github-data'