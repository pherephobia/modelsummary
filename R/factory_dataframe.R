#' Internal function to build table with `data.frame` with other arguments as
#' attributes. Useful for testing.
#'
#' @inheritParams factory_gt
#' @keywords internal
#' @return data.frame 
factory_dataframe <- function(tab,
                              align = NULL,
                              hrule = NULL,
                              notes = NULL,
                              output_file = NULL,
                              output_format = NULL,
                              title = NULL) {


    out <- tab
    
    if (!is.null(attr(tab, 'header_sparse_flat'))) {
        colnames(out) <- attr(tab, 'header_sparse_flat')
    }

    attr(out, 'align') <- align
    attr(out, 'hrule') <- hrule
    attr(out, 'notes') <- notes
    attr(out, 'output_file') <- output_file
    attr(out, 'output_format') <- output_format
    attr(out, 'title') <- title

    return(out)

}