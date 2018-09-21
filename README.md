# umap-r-wrapper

This repository contains a minimal R wrapper for calling the UMAP dimension reduction procedure from Python.

 First, Install UMAP for python by following the instructions at: https://github.com/lmcinnes/umap, then use the wrapper function contained in "umap_wrapper.R".

## Example: Reduce three column dataset to 1.

`source("umap_wrapper.R")`

`## Generating fake standard normal data.`

`fake.data <- cbind(rnorm(n=100), rnorm(n=100), rnorm(n=100))`

`## Performing reduction. `

`umap(fake.data, n_neighbors = 15, min_dist = 0, metric = "euclidean", n_components = 1)`

## Example: Using fake cluster assignments (supervised/semi-supervised learning), reducing to 2 columns.

`fake.clust <- c(rep.int(1, 50), rep.int(2, 50))`

`## Performing reduction and plotting results.`

`plot(umap(fake.data, n_neighbors = 15, min_dist = 0, metric = "euclidean", n_components = 2, y=fake.clust), col=fake.clust)`
