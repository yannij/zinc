public
authenticationUrlWithState: stateString

	^ (super authenticationUrlWithState: stateString)
		queryAt: 'scope' put: 'user:email';
		yourself