#' Praises you or someone
#'
#' @description
#' Praises you or someone with a random word.
#'
#' @param who A character of who to praise.
#' @param by A character to say the praise. See the full
#'   list of character by `list_character()`.
#'
#' @return An object of class `cheer`, which is
#'   just a character with special print method.
#'
#' @examples
#' praise_me()
#' praise_me(by = "cow")
#' praise_someone()
#' praise_someone("Joanna", by = "cat")
#'
#' @export
praise_me <- function(by = NULL) {
  affirmation <- sample(praises$words, 1)
  praise_text <- paste0("You are ", affirmation, "!")
  praise_now(praise_text, by = by)
}

#' @rdname praise_me
#' @export
praise_someone <- function(who = NULL, by = NULL) {
  affirmation <- sample(praises$words, 1)
  praise_text <- ifelse(is.null(who),
    paste0(tools::toTitleCase(affirmation), "!"),
    paste0(who, " is ", affirmation, "!")
  )
  praise_now(praise_text, by = by)
}



praise_now <- function(praise, by = NULL) {
  if (is.null(by)) {
    out <- praise
  } else {
    out <- cowsay::say(praise,
      by = by,
      what_color = "green",
      by_color = "orange",
      type = "string"
    )
  }
  structure(out, class = c("praise", "character"))
}

#' @export
print.praise <- function(x, ...) {
  cat(x, ...)
}
