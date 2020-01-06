package content

VideoSource :: "YouTube" | "Vimeo"

Video :: {
  Metadata

  source : VideoSource
  sourceId: string
}
