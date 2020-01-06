package events

import "time"

EventType :: "Conference" | "User Group"

Event :: {
  id: =~ "^[a-z0-9_-]+$"
	name: string
	type: EventType

	dateStart:  time.Time()
	dateFinish: time.Time() & >dateStart
}
