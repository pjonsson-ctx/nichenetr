% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_ligand_to_target.R
\name{extract_top_n_ligands}
\alias{extract_top_n_ligands}
\title{Get the predicted top n ligands of a target gene of interest}
\usage{
extract_top_n_ligands(target_oi,top_n,ligand_target_matrix,ligands_position = "cols")
}
\arguments{
\item{target_oi}{The target gene of interest of which top upstream ligands should be returned}

\item{top_n}{A number between 0 and the total nr of ligands indicating which top n of ligands should be returned.}

\item{ligand_target_matrix}{A matrix of ligand-target probabilty scores.}

\item{ligands_position}{Indicate whether the ligands in the ligand-target matrix are in the rows ("rows") or columns ("cols"). Default: "cols"}
}
\value{
A named numeric vector of ligand-target gene probability scores of the top ligands.
}
\description{
\code{extract_top_n_ligands} Get the predicted top n ligands of a target gene of interest.
}
\examples{
\dontrun{
## Generate the ligand-target matrix from loaded weighted_networks
weighted_networks = construct_weighted_networks(lr_network, sig_network, gr_network,source_weights_df)
ligands = list("TNF","BMP2",c("IL4","IL13"))
ligand_target_matrix = construct_ligand_target_matrix(weighted_networks, ligands)
targets = extract_top_n_ligands("BMP2",2,ligand_target_matrix)
}
}
