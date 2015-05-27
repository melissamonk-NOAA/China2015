#' Add line breaks to a text file
#' 
#' Facilitates inclusion of SS input files in rMarkdown document
#' 
#' @param dir      Directory where file is located
#' @param oldfile  File with long lines that need linebreaks
#' @param newfile  File to write with linebreaks added
#' @param length   Length of lines to be broken

linebreaks <- function(dir, oldfile, newfile, length=75){
  # read lines
  lines <- readLines(file.path(dir, oldfile))
  # place to store broken lines
  newlines <- NULL
  # loop over lines of existing file
  for(iline in 1:length(lines)){
    # individual line
    line <- lines[iline]
    # replace tabs with single spaces
    line <- gsub(pattern="\t", replacement=" ", x=line)
    # code for whether file has been processed adequately
    finished <- FALSE
    # iterate up to 10 times per line
    for(iteration in 1:10){
      # do remaining stuff only if not finished
      if(!finished){
        if(nchar(line)>length){
          # chop line in two pieces if longer than threshold
          first <- substring(line, first=1, last=length)
          line  <- substring(line, first=length+1)
          # add comment mark before remaining part of line
          # if there was a comment in the first part
          if(length(grep("#", first))>0){
            line <- paste("#",line)
          }
          # add first part to newlines object
          newlines <- c(newlines, first)
        }else{
          finished <- TRUE
          newlines <- c(newlines, line)
        }
      }
    }
  }
  # write to new file
  cat('writing to',file.path(dir, newfile),'\n')
  writeLines(newlines, con=file.path(dir, newfile))
}


# example use of function above
if(FALSE){
  
  linebreaks(dir='c:/SS/China/models/China_South_draft_bridge_model/',
             oldfile='china_bridge_XDBSRA_South.dat', newfile='test.dat', length=75)

}
