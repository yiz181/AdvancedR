#' f_operator
#'
#' a function operator that transform *sqrt.2()* and *log.2()* into functions such that:
#' 1. If input is greater than 0, then return normal output.
#' 2. If input is invalid, return an error condition object, with "invalid_input" subclass and invalid value attached.
#'
#' @param f a operator function
#'
#' @return a error message if x is invalid input for operator f,
#' the result of *f(x)* otherwise
#' @export
#'
#' @examples
#' newSqrt = f_operator(mySqrt)
#' newLog = f_operator(myLog)
#' newLog(-1)
#' newSqrt(-4)
#' (y = lapply(runif(2,-10,10), newLog))
#' (y = lapply(runif(2,-10,10), newSqrt))
#'
#' @import rlang
f_operator = function(f){
  force(f)
  transform <- function(x){
    if(x>0){
      f(x)
    }
    else{
      cnd = tryCatch(rlang::catch_cnd(rlang::abort(message = "invalid input",
                                            .subclass ="invalid input",
                                            invalid_input=x)))
    }
  }

  return(transform)
}
