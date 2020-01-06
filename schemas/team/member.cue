package team

Member :: {
	name:  string
	email: string
	handles: {
		github?:  string
		gitlab?:  string
		slack?:   string
		twitter?: string
	}
}

Member
