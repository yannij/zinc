responses
ssoGithubData: request

	| githubSession userData html entity |
	
	githubSession := self githubSessionFor: request.
	userData := githubSession getUserData.

	html := self htmlPageTitled: 'Zinc SSO Github UserData' do: [ :stream | 
		stream << '<h3>Github UserData</h3>'.
		self printDictionary: userData asHtmlOn: stream.
		stream << '<a href="sso-reset">Reset</a>'  ].

	entity := ZnEntity html: html. 
	^ ZnResponse ok: entity