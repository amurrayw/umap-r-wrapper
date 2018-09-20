# umap-r-wrapper

This repository contains a minimal R wrapper for calling the UMAP dimension reduction procedure from Python.

 First, Install UMAP for python by following the instructions at: https://github.com/lmcinnes/umap, then use the wrapper function contained in "umap_wrapper.R".

## Example: Reduce three column dataset to 1.

source(umap_wrapper.R)

`## Generating fake standard normal data.`

`fake.data <- cbind(rnorm(n=100), rnorm(n=100), rnorm(n=100))`

`## Performing reduction. `

`umap(fake.data, n_neighbors = 15, min_dist = 0, metric = "euclidean", n_components = 1)`



