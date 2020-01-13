test: test.content test.events test.team

test.content:
	cue vet ../../examples/content/article.yaml ./schemas/content.cue -e Article
	cue vet ../../examples/content/video.yaml ./schemas/content.cue -e Video

test.events:
	cue vet ../../examples/events/event.yaml ./schemas/events.cue -e Event
	cue vet ../../examples/events/attendance.yaml ./schemas/events.cue -e Attendance

test.team:
	cue vet ../../examples/team/member.yaml ./schemas/team.cue -e Member
