#' Praises you or someone
#'
#' @description
#' Praises you or someone with a random word.
#' @param who A character of who to praise.
#' @param by A character to say the praise. See the full
#'   list of character by `list_character()`.
#' @return An object of class `cheer`, which is
#'   just a character with special print method.
#' @export
praise_me <- function(by = NULL) {
  affirmation <- sample(praise, 1)
  praise_text <- paste0("You are ", affirmation, "!")
  praise_now(praise_text, by = by)
}

#' @rdname praise_me
#' @export
praise_someone <- function(who = NULL, by = NULL) {
  affirmation <- sample(praise, 1)
  praise_text <- ifelse(is.null(who),
                        paste0(tools::toTitleCase(affirmation), "!"),
                        paste0(who, " is ", sample(affirmation, 1), "!"))
  praise_now(praise_text, by = by)
}



praise_now <- function(praise, by = NULL) {
  if(is.null(by)) {
    out <- praise
  } else {
    out <- cowsay::say(praise,
                       by = by,
                       what_color = "green",
                       by_color = "orange",
                       type = "string")
  }
  structure(out, class = c("cheer", "character"))
}

#' @export
print.cheer <- function(x, ...) {
  cat(x)
}
