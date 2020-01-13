package content

import "time"

Metadata :: {
  author: string
  publishedDate: time.Time()
  tags: [...string]
}

Article :: {
  Metadata

  url: string
}

VideoSource :: "YouTube" | "Vimeo"

Video :: {
  Metadata

  source : VideoSource
  sourceId: string
}
