## Minimal UMAP wrapper 

## Install UMAP for python by following the instructions at: https://github.com/lmcinnes/umap, then use the code below.

library(reticulate)

umap.main <- import("umap")

## New version using reticulate.
umap <- function(x, n_neighbors = 10, min_dist = 0.1,
                 metric = 'euclidean', y = c(),
                 n_components = 2, ...){

    ## Have to convert in order to ensure reticulate gives 
    ## UMAP the right kind of python objects.
    data <- as.matrix(x)
    n_neighbors <- as.integer(n_neighbors)
    n_components <- as.integer(n_components)

    ## Intiallizing umap object with var. parameters.
    umap.obj <- umap.main$UMAP(n_neighbors = n_neighbors,
                               min_dist = min_dist,
                               metric = metric,
                               n_components = n_components,
                               ...)

    return(umap.obj$fit_transform(data, y = y))
}

