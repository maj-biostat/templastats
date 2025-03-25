
#' Start up message
#'
#' @param libname
#' @param pkgname
#'
#' @return
#'
#' @examples
.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Loading ", utils::packageVersion(pkgname),
                        " of ", pkgname)
}
