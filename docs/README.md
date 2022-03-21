## Note

[This site](https://rstudio.calvin.edu:8787/s/f8d2fa1e06668d757d0e2/files/D303/DS303_Rpackage/docs/index.html) kind of works but with a wrong URL name.

## Installation

The `lmstt` package is maintained on github and can be installed via

``` r
devtools::install_github('lmsteffen/lmstt')
```

## Example

The `lmstt` package contains the `df_apply` function which will apply a
function and any arguments to a selection of columns in a dataframe. An
example is shown below on the `iris` dataset.

``` r
library(lmstt)
df_apply(iris, round, is.numeric, identity, digit = 0) |> head()
```

    ## # A tibble: 6 × 5
    ##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
    ##          <dbl>       <dbl>        <dbl>       <dbl> <fct>  
    ## 1            5           4            1           0 setosa 
    ## 2            5           3            1           0 setosa 
    ## 3            5           3            1           0 setosa 
    ## 4            5           3            2           0 setosa 
    ## 5            5           4            1           0 setosa 
    ## 6            5           4            2           0 setosa
