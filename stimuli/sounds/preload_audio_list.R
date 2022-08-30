

setwd("~/Documents/GitHub/F32/stimuli/sounds/dot")
cur_sounds = list.files()
export = "["
for (i in 1:length(cur_sounds)) {
  export = paste(export,"stimuli/sounds/dot/",cur_sounds[i],", ",sep="")
}


setwd("~/Documents/GitHub/F32/stimuli/sounds/LD")
cur_sounds = list.files()
for (i in 1:length(cur_sounds)) {
  export = paste(export,"stimuli/sounds/LD/",cur_sounds[i],", ",sep="")
}

setwd("~/Documents/GitHub/F32/stimuli/sounds/link")
cur_sounds = list.files()
all_sounds = c(all_sounds,cur_sounds)

setwd("~/Documents/GitHub/F32/stimuli/sounds/teaching")
cur_sounds = list.files()
all_sounds = c(all_sounds,cur_sounds)

temp = all_sounds

export = "["

for (i in 1:length(all_sounds)) {
  # print(all_sounds[i])
  if (i < length(all_sounds)){
    export = c(export,"/stimuli")
  }

}

setwd("~/Documents/GitHub/F32/stimuli/sounds/")
write.csv('F32-preload-audio.csv',export)
