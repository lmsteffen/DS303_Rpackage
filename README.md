<<<<<<< HEAD

## Installation

The `lmstt` package is maintained on github and can be installed via

``` r
devtools::install_github('lmsteffen/lmstt')
```

    ## Downloading GitHub repo lmsteffen/lmstt@HEAD

    ## rlang      (1.0.1  -> 1.0.2  ) [CRAN]
    ## glue       (1.6.1  -> 1.6.2  ) [CRAN]
    ## Rcpp       (1.0.7  -> 1.0.8.3) [CRAN]
    ## digest     (0.6.28 -> 0.6.29 ) [CRAN]
    ## jsonlite   (1.7.2  -> 1.8.0  ) [CRAN]
    ## crayon     (1.4.2  -> 1.5.0  ) [CRAN]
    ## cli        (3.1.1  -> 3.2.0  ) [CRAN]
    ## tidyselect (1.1.1  -> 1.1.2  ) [CRAN]
    ## cpp11      (0.4.1  -> 0.4.2  ) [CRAN]
    ## dplyr      (1.0.7  -> 1.0.8  ) [CRAN]
    ## yaml       (2.2.1  -> 2.3.5  ) [CRAN]
    ## openssl    (1.4.5  -> 2.0.0  ) [CRAN]
    ## colorspace (2.0-2  -> 2.0-3  ) [CRAN]
    ## withr      (2.4.3  -> 2.5.0  ) [CRAN]
    ## tidyr      (1.1.4  -> 1.2.0  ) [CRAN]

    ## Installing 15 packages: rlang, glue, Rcpp, digest, jsonlite, crayon, cli, tidyselect, cpp11, dplyr, yaml, openssl, colorspace, withr, tidyr

    ## Installing packages into '/home/lms48/R/x86_64-pc-linux-gnu-library/4.1'
    ## (as 'lib' is unspecified)

    ##      checking for file ‘/tmp/RtmpwJ8PqL/remotes16ef812821ed8/lmsteffen-lmstt-ca70ccc/DESCRIPTION’ ...  ✓  checking for file ‘/tmp/RtmpwJ8PqL/remotes16ef812821ed8/lmsteffen-lmstt-ca70ccc/DESCRIPTION’
    ##   ─  preparing ‘lmstt’:
    ##      checking DESCRIPTION meta-information ...  ✓  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ##   ─  building ‘lmstt_0.0.0.9000.tar.gz’
    ##      Warning in sprintf(gettext(fmt, domain = domain), ...) :
    ##      one argument not used by format 'invalid uid value replaced by that for user 'nobody''
    ##      Warning: invalid uid value replaced by that for user 'nobody'
    ##    Warning in sprintf(gettext(fmt, domain = domain), ...) :
    ##      one argument not used by format 'invalid gid value replaced by that for user 'nobody''
    ##    Warning: invalid gid value replaced by that for user 'nobody'
    ##      
    ## 

    ## Installing package into '/home/lms48/R/x86_64-pc-linux-gnu-library/4.1'
    ## (as 'lib' is unspecified)

## Example

The `lmstt` package contains the `df_apply` function which will apply a
function and any arguments to a selection of columns in a dataframe. An
example is shown below on the `iris` dataset.

``` r
library(lmstt)
df_apply(iris, round, is.numeric, identity, digit = 0)
```

    ## # A tibble: 150 × 5
    ##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
    ##           <dbl>       <dbl>        <dbl>       <dbl> <fct>  
    ##  1            5           4            1           0 setosa 
    ##  2            5           3            1           0 setosa 
    ##  3            5           3            1           0 setosa 
    ##  4            5           3            2           0 setosa 
    ##  5            5           4            1           0 setosa 
    ##  6            5           4            2           0 setosa 
    ##  7            5           3            1           0 setosa 
    ##  8            5           3            2           0 setosa 
    ##  9            4           3            1           0 setosa 
    ## 10            5           3            2           0 setosa 
    ## # … with 140 more rows
=======
# DS303_Rpackage
[Project page](https://lmsteffen.github.io/lmstt/)
>>>>>>> ca70ccc0d1233d6a9c87e632246ae24d79ab59b2
