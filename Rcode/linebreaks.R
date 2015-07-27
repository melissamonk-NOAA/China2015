#' Add line breaks to a text file
#' 
#' Facilitates inclusion of SS input files in rMarkdown document
#' 
#' @param dir      Directory where file is located
#' @param oldfile  File with long lines that need linebreaks
#' @param newfile  File to write with linebreaks added
#' @param length   Length of lines to be broken

linebreaks <- function(dir,out.dir, oldfile, newfile, length=75){
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
  cat('writing to',file.path(out.dir, newfile),'\n')
  writeLines(newlines, con=file.path(out.dir, newfile))
}


# example use of function above
#if(FALSE){
#  
#  linebreaks(dir='c:/SS/China/models/China_South_draft_bridge_model/',
#             out.dir='c:/SS/China/models/China_South_draft_bridge_model/linebreak_files',
#             oldfile='china_WAonly_data.ss', newfile='china_WAonly_data.s', length=75)
#
#}

#For paths on melissa monk's desktop computer
#output directory
 linebreak.dir = 'C:/China2015/SS/linebreak_files'

#north model
 #input directory
  north.dir  = 'C:/China2015/SS/Northern_base'

    #data files
     linebreaks(dir=north.dir, out.dir=linebreak.dir, oldfile='china_WAonly_data.ss', newfile='china_WAonly_data.ss', length=75)
    #control files
     linebreaks(dir=north.dir, out.dir=linebreak.dir, oldfile='china_WAonly_control.ss', newfile='china_WAonly_control.ss', length=75)
    #starter files
     linebreaks(dir=north.dir, out.dir=linebreak.dir, oldfile='starter.ss', newfile='starter_north.ss', length=75)
    #forecast files
     linebreaks(dir=north.dir, out.dir=linebreak.dir, oldfile='forecast.ss', newfile='forecast_north.ss', length=75)
    

#central model
 #input directory
  central.dir  = 'C:/China2015/SS/Central_base'
    #data files
      linebreaks(dir= central.dir, out.dir=linebreak.dir, oldfile='china_central_data.ss', newfile='china_central_data.ss', length=75)
    #control files
      linebreaks(dir= central.dir, out.dir=linebreak.dir, oldfile='china_central_control.ss', newfile='china_central_control.ss', length=75)
    #starter files
      linebreaks(dir= central.dir, out.dir=linebreak.dir, oldfile='starter.ss', newfile='starter_central.ss', length=75)
    #forecast files
      linebreaks(dir= central.dir, out.dir=linebreak.dir, oldfile='forecast.ss', newfile='forecast_central.ss', length=75)


#southern model
 #input directory
  south.dir  = 'C:/China2015/SS/Southern_base'
    #data files
      linebreaks(dir= south.dir, out.dir=linebreak.dir, oldfile='china_south_data.ss', newfile='china_south_data.ss', length=75)
    #control files
      linebreaks(dir= south.dir, out.dir=linebreak.dir, oldfile='china_south_control.ss', newfile='china_south_control.ss', length=75)
    #starter files
      linebreaks(dir= south.dir, out.dir=linebreak.dir, oldfile='starter.ss', newfile='starter_south.ss', length=75)
    #forecast files
      linebreaks(dir= south.dir, out.dir=linebreak.dir, oldfile='forecast.ss', newfile='forecast_south.ss', length=75)
    


