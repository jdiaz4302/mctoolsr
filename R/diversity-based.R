# mctoolsr

###################
# DIVERSITY-BASED #
###################

#' @title Calculate diversity values
#' @description Calculate diversity values from a taxa table.
#' @param tax_table The taxa table.
#' @param metric The diversity metric to calculate. Acceptable values are: 
#'  'richness', 'shannon', and 'simpson'.
#' @details Richness is the number of uniaue species per sample. Simpson's 
#'  diversity metric (1 - D) quantifies evenness, and Shannon diversity is a 
#'  combination of richness and evenness.
calc_diversity = function(tax_table, metric){
  metrics = c('richness', 'shannon', 'simpson')
  if(metric == 'richness'){
    apply(tax_table, 2, function(x) length(x[x > 0]))
  }
  else if(metric %in% c('shannon', 'simpson')){
    vegan::diversity(tax_table, index = metric, MARGIN = 2)
  }
  else {
    stop(paste0('Metric, "', metric, '", is not a valid metric.\n  Valid metrics are: ',
                paste(metrics, collapse = ', '), '.'))
  }
}

#' @title Plot diversity values
#' @description Plot diversity using boxplots across levels of a given factor.
#' @param input The input dataset as loaded by \code{load_taxa_table()}.
#' @param variable Variable in mapping file to plot by.
#' @param metric Diversity metric to use. Acceptable values are: 
#'  'richness', 'shannon', and 'simpson'.
#' @details Richness is the number of uniaue species per sample. Simpson's 
#'  diversity metric quantifies evenness, and Shannon diversity is a combination
#'  of richness and evenness.
plot_diversity = function(input, variable, metric){
  diversity = calc_diversity(input$data_loaded, metric)
  to_plot = data.frame(diversity, input$map_loaded[, variable])
  names(to_plot) = c(metric, variable)
  ggplot2::ggplot(to_plot, ggplot2::aes_string(variable, metric, 
                                               fill = variable)) +
    ggplot2::geom_boxplot() + ggplot2::theme_bw() + ggplot2::xlab('')
}
