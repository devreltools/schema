package events

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
