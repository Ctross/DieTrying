#' Batch resize
#'
#' This is a helper function to batch resize raw images of game boards. Set scaler=1 to simply pass images from the raw folder into the output file folder with no scaling.
#' @param 
#' path path Full path to main folder.
#' @param 
#' scaler Factor by which image will be shrunk.
#' @export

downsize = function(path=path, scaler=2){
  library(imager)
  path_imgs_big = paste0(path, "/ResultsPhotos/")
  path_imgs_small = paste0(path, "/ResultsPhotosSmall/")
  to_read = list.files(path_imgs_big, full=TRUE)
  to_save = list.files(path_imgs_big)

  for(i in 1:length(to_read)){
   imgRaw = load.image(to_read[i])
   img = resize(imgRaw,round(width(imgRaw)/scaler),round(height(imgRaw)/scaler))

   imager::save.image(img, paste0(path_imgs_small,to_save[i]), quality = 0.9)
   }
}
