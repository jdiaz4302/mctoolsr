% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/taxonomy-based.R
\name{filter_taxa_from_table}
\alias{filter_taxa_from_table}
\title{Filter Taxa from an Individual Taxa Summary Table}
\usage{
filter_taxa_from_table(tax_table, filter_thresh = 0, taxa_to_keep,
  taxa_to_remove)
}
\arguments{
\item{tax_table}{Input taxa summary table from \code{summarize_taxonomy()}
(dataframe).}

\item{filter_thresh}{Filter taxa less than this number based on mean
table values.}

\item{taxa_to_keep}{Keep only taxa that contain these names. Vector or string.}

\item{taxa_to_remove}{Remove taxa that contain these names. Vector or string.}
}
\description{
Filter Taxa from an Individual Taxa Summary Table
}
\details{
Can use one or more of the parameters to do filtering. Threshold
 filtering takes precidence over taxa filtering. If taxa to keep and
 taxa to remove are both included, taxa to remove will be
 removed if the parameter entries conflict.
}

