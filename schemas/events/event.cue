package events

import "time"

EventType :: "Conference" | "User Group"

Event :: {
  name: string
  type: EventType

  dateStart: time.Time()
  dateFinish: time.Time() & > dateStart
}

Event
