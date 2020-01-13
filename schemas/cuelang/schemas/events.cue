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

AttendanceRole :: "Attendee" | "Keynote" | "Presentation" | "Sponsor" | "Workshop"

Cost :: {
  currency: string
  price: number
}

Travel :: {
  airportCodes: [string, string, ...string]
  cost: Cost
}

Accommodation :: {
  cost: Cost
}

Attendance :: {
  event: string
  role: [AttendanceRole, ...AttendanceRole]
  travel?: Travel
  accommodation?: Accommodation
}
