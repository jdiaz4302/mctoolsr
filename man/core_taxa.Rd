% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/misc_analyses.R
\name{core_taxa}
\alias{core_taxa}
\title{Determine taxa that are common (core) across sample types}
\usage{
core_taxa(input, type_header, prop_types = 1, prop_reps = 0.5)
}
\arguments{
\item{input}{The input dataset as loaded by \code{load_taxa_table()}.}

\item{type_header}{Mapping file header (in quotation marks) of factor for
which you are testing for differences.}

\item{prop_types}{The proportion of sample types in which a taxon must
be present to be considered core.}

\item{prop_reps}{The proportion of replicate samples within a sample type
in which a taxon must be present to be considered core.}
}
\value{
A data frame with each core taxon as a row. The proportion of sample
 types where the taxon was present, the mean count of each
 sample type, and the corresponding taxonomy (if provided), are also
 returned.
}
\description{
This function returns a data frame with taxa that meet
 proportion user thresholds and are determined to be common across multiple
 sample types.
}

