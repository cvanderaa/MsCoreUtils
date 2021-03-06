#' @title Validation functions
#'
#' @description
#' These functions are used to validate input arguments. In general they are
#' just wrapper around their corresponding `is*` function with an error message.
#'
#' @details
#' `validPeaksMatrix`: see [`isPeaksMatrix`].
#'
#' @param x object to test.
#'
#' @return `logical(1)`, `TRUE` if validation are successful otherwise an error
#' is thrown.
#'
#' @author Sebastian Gibb
#' @family helper functions for developers
#' @rdname validation
#' @export
#' @examples
#' try(validPeaksMatrix(1:2))
#' validPeaksMatrix(cbind(mz = 1:2, intensity = 1:2))
validPeaksMatrix <- function(x) {
    if (!isPeaksMatrix(x))
        stop("'x' has to be a 'numeric' matrix with two columns named ",
             "'mz' and 'intensity'. The 'mz' column has to be sorted ",
             "increasingly.")
    TRUE
}
