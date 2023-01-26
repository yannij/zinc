public
getUserEmails
	| url client response |
	
	url := ZnUrl fromString: 'https://api.github.com/user/emails'.

	client := ZnClient new.
	client headerAt: 'Authorization' put: 'Bearer ', self accessToken.
	response := [ client get: url ] 
		ensure: [ client close ].
	
	^ NeoJSONReader fromString: response