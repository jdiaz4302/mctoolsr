% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/normalization.R
\name{calc_taxa_means}
\alias{calc_taxa_means}
\title{Calculate mean taxa values across a specified factor}
\usage{
calc_taxa_means(input, summarize_by_factor, metadata_map)
}
\arguments{
\item{input}{The input dataset as loaded by \code{load_taxa_table()} or
an otu table of class \code{data.frame}.}

\item{summarize_by_factor}{Category in mapping file to summarize by.}

\item{metadata_map}{[Optional]. The metadata mapping data frame. Required if
input is a \code{data.frame}.}
}
\value{
If input is a list, returns a list with a taxon table (data_loaded)
 and a mapping data frame (map_loaded). It will automatically return
 taxonomy in the list if provided in the input.
}
\description{
Calculate mean taxa values across a specified factor
}

