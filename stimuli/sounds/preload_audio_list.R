

setwd("~/Documents/GitHub/F32/stimuli/sounds/teaching")
cur_sounds = list.files()
export = ""
for (i in 1:length(cur_sounds)) {
  if (i < length(cur_sounds)) {
    export = paste(export,"stimuli/sounds/teaching/",cur_sounds[i],",",sep="")
  } else {
    export = paste(export,"stimuli/sounds/teaching/",cur_sounds[i],sep="")
    }
}


setwd("~/Documents/GitHub/F32/stimuli/sounds/dot")
cur_sounds = list.files()
for (i in 1:length(cur_sounds)) {
  export = paste(export,"stimuli/sounds/dot/",cur_sounds[i],",",sep="")
}


setwd("~/Documents/GitHub/F32/stimuli/sounds/link")
cur_sounds = list.files()
for (i in 1:length(cur_sounds)) {
  export = paste(export,"stimuli/sounds/link/",cur_sounds[i],",",sep="")
}


setwd("~/Documents/GitHub/F32/stimuli/sounds/LD")
cur_sounds = list.files()
for (i in 1:length(cur_sounds)) {
  export = paste(export,"stimuli/sounds/LD/",cur_sounds[i],",",sep="")
}



setwd("~/Documents/GitHub/F32/orders/")
save = data.frame('audio'=export,'images'="")
write.csv(save,file='F32-preload.csv')
