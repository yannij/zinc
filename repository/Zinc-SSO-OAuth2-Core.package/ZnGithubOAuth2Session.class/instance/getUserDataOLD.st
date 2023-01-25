public
getUserDataOLD

	| url client response |
	
	url := (ZnUrl fromString: 'https://api.github.com/user')
		queryAt: 'access_token' put: self accessToken;
		yourself.

	client := ZnClient new.
	response := [ client get: url ] 
		ensure: [ client close ].
	
	^ NeoJSONReader fromString: response