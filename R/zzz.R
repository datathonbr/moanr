.onAttach <- function(libname, pkgname) {
  gemer <- function() {
    f <- system.file("gemidao.wav", package = "moanr")
    beepr::beep(f)
  }
  s <- sort(sample(1:500, 10, replace = FALSE))
  sapply(s, function(x) later::later(gemer, x))
}
