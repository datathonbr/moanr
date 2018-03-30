.onAttach <- function(libname, pkgname) {

  gemer <- function() {
    f <- system.file("gemidao.wav", package = "moanr")
    beepr::beep(f)
  }

  # mostrar_a_piroca <- function() {
  #   img <- readRDS(system.file("negao-da-piroca.rds", package = "moanr"))
  #   par(mar=c(0,0,0,0))
  #   plot(as.raster(img))
  # }

  s <- sort(sample(1:500, 10, replace = FALSE))
  sapply(s, function(x) later::later(gemer, x))
  # sapply(s-2, function(x) later::later(mostrar_a_piroca, x))
}
