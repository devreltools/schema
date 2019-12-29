test: test.events test.team

test.events:
	cue vet examples/events/event.yaml schemas/events/event.cue
	cue vet examples/events/attendance.yaml schemas/events/attendance.cue

test.team:
	cue vet examples/team/member.yaml schemas/team/member.cue
