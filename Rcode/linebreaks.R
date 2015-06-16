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
if(FALSE){
  
  linebreaks(dir='c:/SS/China/models/China_South_draft_bridge_model/',
             out.dir='c:/SS/China/models/China_South_draft_bridge_model/linebreak_files',
             oldfile='china_WAonly_data.ss', newfile='china_WAonly_data.s', length=75)

}

#For paths on melissa monk's desktop computer

#north model
#data files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaN',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaN/linebreak_files',
           oldfile='china_WAonly_data.ss', newfile='china_WAonly_data.ss', length=75)
#control files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaN',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaN/linebreak_files',
           oldfile='china_WAonly_control.ss', newfile='china_WAonly_control.ss', length=75)
#starter files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaN',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaN/linebreak_files',
           oldfile='starter.ss', newfile='starter.ss', length=75)
#forecast files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaN',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaN/linebreak_files',
           oldfile='forecast.ss', newfile='forecast.ss', length=75)


#central model
#data files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaC',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaC/linebreak_files',
           oldfile='china_central_data.ss', newfile='china_central_data.ss', length=75)
#control files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaC',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaC/linebreak_files',
           oldfile='china_central_control.ss', newfile='china_central_control.ss', length=75)
#starter files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaC',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaC/linebreak_files',
           oldfile='starter.ss', newfile='starter.ss', length=75)
#forecast files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaC',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaC/linebreak_files',
           oldfile='forecast.ss', newfile='forecast.ss', length=75)


#southern model
#data files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaS',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaS/linebreak_files',
           oldfile='china_south_data.ss', newfile='china_south_data.ss', length=75)
#control files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaS',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaS/linebreak_files',
           oldfile='china_south_control.ss', newfile='china_south_control.ss', length=75)
#starter files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaS',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaS/linebreak_files',
           oldfile='starter.ss', newfile='starter.ss', length=75)
#forecast files
linebreaks(dir='c:/Assessment 2015/China rockfish/SS/SS_chinaS',
           out.dir='c:/Assessment 2015/China rockfish/SS/SS_chinaS/linebreak_files',
           oldfile='forecast.ss', newfile='forecast.ss', length=75)



