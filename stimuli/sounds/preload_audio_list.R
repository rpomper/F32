

setwd("~/Documents/GitHub/F32/stimuli/sounds/teaching")
cur_sounds = list.files()
all_sounds = ""
for (i in 1:length(cur_sounds)) {
  all_sounds = paste(all_sounds,"stimuli/sounds/teaching/",cur_sounds[i],",",sep="")
}


setwd("~/Documents/GitHub/F32/stimuli/sounds/dot")
cur_sounds = list.files()
for (i in 1:length(cur_sounds)) {
  all_sounds = paste(all_sounds,"stimuli/sounds/dot/",cur_sounds[i],",",sep="")
}


setwd("~/Documents/GitHub/F32/stimuli/sounds/link")
cur_sounds = list.files()
for (i in 1:length(cur_sounds)) {
  all_sounds = paste(all_sounds,"stimuli/sounds/link/",cur_sounds[i],",",sep="")
}


setwd("~/Documents/GitHub/F32/stimuli/sounds/LD")
cur_sounds = list.files()
for (i in 1:length(cur_sounds)) {
  if (i < length(cur_sounds)) {
    all_sounds = paste(all_sounds,"stimuli/sounds/LD/",cur_sounds[i],",",sep="")
  } else {
    all_sounds = paste(all_sounds,"stimuli/sounds/LD/",cur_sounds[i],sep="")
  }
}

setwd("~/Documents/GitHub/F32/stimuli/images/")
cur_images = list.files()
all_images = ""
for (i in 1:length(cur_images)) {
  if (i < length(cur_images)) {
    all_images = paste(all_images,"stimuli/images/",cur_images[i],",",sep="")
  } else {
    all_images = paste(all_images,"stimuli/images/",cur_images[i],sep="")
  }
}


setwd("~/Documents/GitHub/F32/stimuli/video/")
cur_videos = list.files()
all_videos = ""
for (i in 1:length(cur_videos)) {
  if (i < length(cur_videos)) {
    all_videos = paste(all_videos,"stimuli/video/",cur_videos[i],",",sep="")
  } else {
    all_videos = paste(all_videos,"stimuli/video/",cur_videos[i],sep="")
  }
}


setwd("~/Documents/GitHub/F32/orders/")
save = data.frame('audio'=all_sounds,'images'=all_images,'video'=all_videos)
write.csv(save,file='F32-preload.csv',row.names=F)
