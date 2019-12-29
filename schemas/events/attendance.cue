package events

AttendanceRole :: "Attendee" | "Presentation" | "Sponsor" | "Workshop"

Attendance :: {
  event: string
  role: [...AttendanceRole]
}

Attendance
