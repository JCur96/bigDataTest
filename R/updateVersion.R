#' Function for updating version number more painlessly
#' Empty parameter as you enter version number on cmd line
#' @return Updated DESCRIPTION file for easy versionning
#' @export
updateVersion <- function() {
  verNum <- readline(prompt = 'please enter new version number: ') # gets new version number
  verNum = paste('Version:', verNum) # Makes the line whole again
  lines <- readLines('DESCRIPTION') # reads the lines of file
  lines[4] <- sub('Version: .+', verNum, lines[4]) # replaces with updated Ver
  Desc <- file('DESCRIPTION') # save lines as DESCRITPTION overwritting it
  writeLines(lines, Desc)
  close(Desc)

}
