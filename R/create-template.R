


#' Create minute template
#'
#' `create_minutes_md` creates a minute template for you to fill in
#'
#' This is a helper function to create minutes in a consistent way.
#' You can use it at any meeting to record the agenda, attendees etc.
#'
#' @param file_name The name of the file to save the template shell to.
#' @param ext_name The name of the specific extension
#'
#' @return
#' @export
#'
#' @examples
create_minutes_md <- function(
    file_name = NULL,
    ext_name = "minutes-md") {

  if (is.null(file_name)) {
    stop("You must provide a valid file_name")
  }

  # check for available extensions
  stopifnot("Extension not in package" = ext_name %in% c("minutes-md"))

  # check for existing _extensions directory
  if(!file.exists("_extensions")) dir.create("_extensions")
  message("Created '_extensions' folder")

  # create folder
  if(!file.exists(paste0("_extensions/", ext_name))) dir.create(paste0("_extensions/", ext_name))

  # copy from internals
  file.copy(
    from = system.file(paste0("extdata/_extensions/", ext_name), package = "templastats"),
    to = paste0("_extensions/"),
    overwrite = TRUE,
    recursive = TRUE,
    copy.mode = TRUE
  )

  # logic check to make sure extension files were moved
  n_files <- length(dir(paste0("_extensions/", ext_name)))

  if(n_files >= 1){
    message(paste(ext_name, "was installed to _extensions folder in current working directory."))
  } else {
    message("Extension appears not to have been created")
  }

  # create new qmd report based on skeleton
  file.copy("_extensions/minutes-md/minutes-template.md",
            paste0(file_name, ".md", collapse = ""))

  # open the new file in the editor
  file.edit(paste0(file_name, ".md", collapse = ""))

}





#' Create review request outline document
#'
#' `create_review_request_md` creates a review request template for you to fill in
#'
#' This is a helper function to create a review request template.
#' When developing your sap, code, trial report etc, you can use this to produce
#' a nicely formatted document that captures all the relevant information to
#' undertake a review. You can keep this review request as part of your project
#' files and, if necessary, also transfer a copy to the TMF.
#'
#' @param file_name The name of the file to save the template shell to.
#' @param ext_name The name of the specific extension
#'
#' @return
#' @export
#'
#' @examples
create_review_request_md <- function(
    file_name = NULL,
    ext_name = "review-request-md") {

  if (is.null(file_name)) {
    stop("You must provide a valid file_name")
  }

  # check for available extensions
  stopifnot("Extension not in package" = ext_name %in% c("review-request-md"))

  # check for existing _extensions directory
  if(!file.exists("_extensions")) dir.create("_extensions")
  message("Created '_extensions' folder")

  # create folder
  if(!file.exists(paste0("_extensions/", ext_name))) dir.create(paste0("_extensions/", ext_name))

  # copy from internals
  file.copy(
    from = system.file(paste0("extdata/_extensions/", ext_name), package = "templastats"),
    to = paste0("_extensions/"),
    overwrite = TRUE,
    recursive = TRUE,
    copy.mode = TRUE
  )

  # logic check to make sure extension files were moved
  n_files <- length(dir(paste0("_extensions/", ext_name)))

  if(n_files >= 1){
    message(paste(ext_name, "was installed to _extensions folder in current working directory."))
  } else {
    message("Extension appears not to have been created")
  }

  # create new qmd report based on skeleton
  file.copy("_extensions/review-request-md/review-request-template.md",
            paste0(file_name, ".md", collapse = ""))

  # open the new file in the editor
  file.edit(paste0(file_name, ".md", collapse = ""))

}






#' Create review update outline document
#'
#' `create_review_update_md` creates a review update template for you to fill in
#'
#' This is a helper function to create a review update template.
#' When developing your sap, code, trial report etc, you can use this to produce
#' a nicely formatted document that captures all the relevant information relevant
#' to the updates you committed to making as an outcome of the review. You can
#' keep this review request as part of your project files and, if necessary,
#' also transfer a copy to the TMF.
#'
#' @param file_name The name of the file to save the template shell to.
#' @param ext_name The name of the specific extension
#'
#' @return
#' @export
#'
#' @examples
create_review_update_md <- function(
    file_name = NULL,
    ext_name = "review-update-md") {

  if (is.null(file_name)) {
    stop("You must provide a valid file_name")
  }

  # check for available extensions
  stopifnot("Extension not in package" = ext_name %in% c("review-update-md"))

  # check for existing _extensions directory
  if(!file.exists("_extensions")) dir.create("_extensions")
  message("Created '_extensions' folder")

  # create folder
  if(!file.exists(paste0("_extensions/", ext_name))) dir.create(paste0("_extensions/", ext_name))

  # copy from internals
  file.copy(
    from = system.file(paste0("extdata/_extensions/", ext_name), package = "templastats"),
    to = paste0("_extensions/"),
    overwrite = TRUE,
    recursive = TRUE,
    copy.mode = TRUE
  )

  # logic check to make sure extension files were moved
  n_files <- length(dir(paste0("_extensions/", ext_name)))

  if(n_files >= 1){
    message(paste(ext_name, "was installed to _extensions folder in current working directory."))
  } else {
    message("Extension appears not to have been created")
  }

  # create new qmd report based on skeleton
  file.copy("_extensions/review-update-md/review-update-template.md",
            paste0(file_name, ".md", collapse = ""))

  # open the new file in the editor
  file.edit(paste0(file_name, ".md", collapse = ""))

}

#' Create review release outline document
#'
#' `create_review_release_md` creates a review release template for you to fill in
#'
#' This is a helper function to create a review release template.
#' When developing your sap, code, trial report etc, you can use this to produce
#' a nicely formatted document that captures all the relevant information relevant
#' to the release notification which signifies a milestone in the products dev.
#' You can keep this review request as part of your project files and, if
#' necessary, also transfer a copy to the TMF.
#'
#' @param file_name The name of the file to save the template shell to.
#' @param ext_name The name of the specific extension
#'
#' @return
#' @export
#'
#' @examples
create_review_release_md <- function(
    file_name = NULL,
    ext_name = "review-release-md") {

  if (is.null(file_name)) {
    stop("You must provide a valid file_name")
  }

  # check for available extensions
  stopifnot("Extension not in package" = ext_name %in% c("review-release-md"))

  # check for existing _extensions directory
  if(!file.exists("_extensions")) dir.create("_extensions")
  message("Created '_extensions' folder")

  # create folder
  if(!file.exists(paste0("_extensions/", ext_name))) dir.create(paste0("_extensions/", ext_name))

  # copy from internals
  file.copy(
    from = system.file(paste0("extdata/_extensions/", ext_name), package = "templastats"),
    to = paste0("_extensions/"),
    overwrite = TRUE,
    recursive = TRUE,
    copy.mode = TRUE
  )

  # logic check to make sure extension files were moved
  n_files <- length(dir(paste0("_extensions/", ext_name)))

  if(n_files >= 1){
    message(paste(ext_name, "was installed to _extensions folder in current working directory."))
  } else {
    message("Extension appears not to have been created")
  }

  # create new qmd report based on skeleton
  file.copy("_extensions/review-release-md/review-release-template.md",
            paste0(file_name, ".md", collapse = ""))

  # open the new file in the editor
  file.edit(paste0(file_name, ".md", collapse = ""))

}




