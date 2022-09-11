
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cheer

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The `cheer` package is created for teaching demo purposes. It extends
the idea of the `praise` package but includes:

-   the use of `cowsay` package to demonstrate the use of imported
    package,
-   the use of special `print` method,
-   the use of tags `@descripton`, `@param`, `@return`, `@rdname` from
    `roxygen2`,
-   the concept of turning repeated steps into an internal function
    (`praise_now()`),
-   simple tests via `testthat`,
-   a vignette, and
-   a `pkgdown` website.

## Installation

You can install the development version of cheer like so:

``` r
remotes::install_github("emitanaka/cheer")
```

## Example

Give yourself or others a simple cheer:

``` r
library(cheer)
praise_me()
#> You are splendid!
praise_me(by = "chicken")
#> 
#>  ----- 
#> You are brilliant! 
#>  ------ 
#>     \   
#>      \
#>          _
#>        _/ }
#>       `>' \
#>       `|   \
#>        |   /'-.     .-.
#>         \'     ';`--' .'
#>          \'.    `'-./
#>           '.`-..-;`
#>             `;-..'
#>             _| _|
#>             /` /` [nosig]
#> 
praise_someone(who = "Natalia", by = "cow")
#> 
#>  ----- 
#> Natalia is delightful! 
#>  ------ 
#>     \   ^__^ 
#>      \  (oo)\ ________ 
#>         (__)\         )\ /\ 
#>              ||------w|
#>              ||      ||
```
