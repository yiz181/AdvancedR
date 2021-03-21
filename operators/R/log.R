#' myLog
#'
#' myLog computes natural logarithms for positive x,
#' show error message for non-positive x
#'
#' @param x a real number
#' @param base the base of logarithms
#'
#' @return a error message if x is non-positive; the result of log of x otherwise
#' @export
#'
#' @examples
#' \dontrun{
#' a = myLog(-1)
#' b = myLog(4)
#' }
#'
#' @import rlang

myLog = function(x){
  if (x <= 0){
    rlang::abort(message = "negative input, NA introduced!",
                 .subclass ="neg_val_error")
  } else {
    log(x)
  }
}
