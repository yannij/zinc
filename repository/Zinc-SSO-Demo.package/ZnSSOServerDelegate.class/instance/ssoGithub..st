responses
ssoGithub: request

	| githubSession html entity |
	
	githubSession := self githubSessionFor: request.
		
	html := self htmlPageTitled: 'Zinc SSO Github Login' do: [ :stream |
		stream
			<< '<h3>Github SSO</h3>' ;
			<< '<a href="' ;
			<< githubSession authenticationUrl asString ;
			<< '">Login with Github</a>' ].

	entity := ZnEntity html: html. 
	^ ZnResponse ok: entity