
<!-- README.md is generated from README.Rmd. Please edit that file -->

# praise.m

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The `praise.me` package is created for teaching demo purposes. It
extends the idea of the `praise` package but includes:

-   the use of `cowsay` package to demonstrate the use of imported
    package,
-   the use of special `print` method,
-   the use of tags `@descripton`, `@param`, `@return`, `@rdname` from
    `roxygen2`,
-   the concept of turning repeated steps into an internal function
    (e.g. `praise_now()`),
-   distribution and documentation of data,
-   simple tests via `testthat`,
-   a vignette, and
-   a `pkgdown` website.

## Installation

You can install the development version of cheer like so:

``` r
remotes::install_github("emitanaka/praise.me")
```

## Example

Give yourself or others a simple praise:

``` r
library(praise.me)
praise_me()
#> You are delightful!
praise_me(by = "chicken")
#> 
#>  ----- 
#> You are astonishing! 
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
#> Natalia is excpetional! 
#>  ------ 
#>     \   ^__^ 
#>      \  (oo)\ ________ 
#>         (__)\         )\ /\ 
#>              ||------w|
#>              ||      ||
```
