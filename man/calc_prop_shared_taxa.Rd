% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/misc_analyses.R
\name{calc_prop_shared_taxa}
\alias{calc_prop_shared_taxa}
\title{Calculate mean proportions of shared taxa between paired samples}
\usage{
calc_prop_shared_taxa(input, type_header, sample_types, within_cat)
}
\arguments{
\item{input}{Data from load_taxa_table()}

\item{type_header}{(Optional) The header label from the metadata map that
has the labels which indicate the types of samples you want to calculate
proportions for.}

\item{sample_types}{(Optional) Use with type_header to indicate which two
sample types for which you want to calculate proportions. Supply a character
vector of length 2.}

\item{within_cat}{(Optional) Specify a header label from the metadata map
that tells the function to restrict pairs to within levels of this factor.
If included, will return a data frame instead of a vector.}
}
\description{
This function will calculate the mean proportion of taxa
 (i.e. OTUs) that are shared between pairs of samples in a given data set.
 It has the option to calculate this value for only pairs where each sample
 is of a different, specified type. For example, this is useful if you want
 to calculate proportion of taxa that are shared between red and blue
 samples only and not red and red or red and green, etc.
}

