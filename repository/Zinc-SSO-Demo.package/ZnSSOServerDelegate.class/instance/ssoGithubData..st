responses
ssoGithubData: request

	| githubSession userData userEmails html entity |
	
	githubSession := self githubSessionFor: request.
	userData := githubSession getUserData.
	userEmails := githubSession getUserEmails.

	html := self htmlPageTitled: 'Zinc SSO Github UserData' do: [ :stream | 
		stream << '<h3>Github UserData</h3>'.
		self printDictionary: userData asHtmlOn: stream.
		stream << '<h3>Github UserEmails</h3>'.
		userEmails do: [ :each | self printDictionary: each asHtmlOn: stream ].
		stream << '<a href="sso-reset">Reset</a>' ].

	entity := ZnEntity html: html. 
	^ ZnResponse ok: entity