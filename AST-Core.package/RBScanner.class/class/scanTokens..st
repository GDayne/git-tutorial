public api
scanTokens: aStringOrStream
	| scanner |
	scanner := self on: aStringOrStream readStream.
	^scanner contents collect:[ :t | t value ]