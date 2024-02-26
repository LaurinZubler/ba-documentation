== Meeting Minutes
#let meetings = (
  "/chapters/appendix/meetings/meeting01.typ", 
  "/chapters/appendix/meetings/meeting02.typ",
  "/chapters/appendix/meetings/meeting03.typ",
  "/chapters/appendix/meetings/meeting04.typ",
  "/chapters/appendix/meetings/meeting05.typ",
  "/chapters/appendix/meetings/meeting06.typ",
  "/chapters/appendix/meetings/meeting07.typ",
  "/chapters/appendix/meetings/meeting08.typ",
  "/chapters/appendix/meetings/meeting09.typ",
  "/chapters/appendix/meetings/meeting10.typ",
  "/chapters/appendix/meetings/meeting11.typ",
  "/chapters/appendix/meetings/meeting12.typ",
  "/chapters/appendix/meetings/meeting13.typ",
  "/chapters/appendix/meetings/meeting14.typ",
)

#for path in meetings {
  include path
  pagebreak()
}