#' mySqrt
#'
#' mySqrt computes the (principal) square root of non-negative x,
#' show error message for negative x.
#'
#' @param x a real number
#'
#' @return a error message if x is negative; the result of square root of x otherwise
#' @export
#'
#' @examples
#' \dontrun{
#' a = mySqrt(-1)
#' b = mySqrt(4)
#' }
#'
#' @import rlang

mySqrt = function(x){
  if (x < 0){
    rlang::abort(message = "negative input, NA introduced!",
                 .subclass ="neg_val_error")
  } else {
    sqrt(x)
  }
}
