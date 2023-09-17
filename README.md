# libminer

Utility for Inspecting Libraries

https://posit-conf-2023.github.io/pkg-dev/setup.html

### package development
install.packages(
  c("devtools", "roxygen2", "testthat", "rmarkdown", "pkgdown", "purrr")
)
```{r}
devtools::has_devel()

# usethis::use_git_config(
#   user.name = "Eric Young",          # actual first and last name
#   user.email = "eryo3113@colorado.edu"  # email associated with GitHub account
# )
# usethis::create_github_token()
# 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
# gitcreds::gitcreds_set()

### show location of libraries on computer
.libPaths()

```


Five forms, states:
- source: directory of files you interact with when building
- bundle: output of devtools::build()
- binary: output of devtools::build(binary = TRUE)
- installed
- in memory


# load devtools
```{r}
### includes loading usethis::
library(devtools)
packageVersion("devtools")

```

# create package directory

- final part of path will be package name
- sets up basic package skeleton
- opens a new RStudio project
- activates "build" pane in RStudio

```{r}

create_package("C:/Users/eryo3113/libminer")

```
Sample output of create_package():
Show in New Window
[1] ‘2.4.5’
Show in New Window
✔ Creating 'C:/Users/eryo3113/libminer/'✔ Setting active project to 'C:/Users/eryo3113/libminer'✔ Creating 'R/'✔ Writing 'DESCRIPTION'Package: libminer
Title: What the Package Does (One Line, Title Case)
Version: 0.0.0.9000
Authors@R (parsed):
    * First Last <first.last@example.com> [aut, cre] (YOUR-ORCID-ID)
Description: What the package does (one paragraph).
License: `use_mit_license()`, `use_gpl3_license()` or friends to
    pick a license
Encoding: UTF-8
Roxygen: list(markdown = TRUE)
RoxygenNote: 7.2.3
✔ Writing 'NAMESPACE'✔ Writing 'libminer.Rproj'✔ Adding '^libminer\\.Rproj$' to '.Rbuildignore'✔ Adding '.Rproj.user' to '.gitignore'✔ Adding '^\\.Rproj\\.user\$' to '.Rbuildignore'✔ Opening 'C:/Users/eryo3113/libminer/' in new RStudio session✔ Setting active project to '<no active project>'

# status of git in project

```{r}

git_sitrep()

```

# use_devtools() to auto load devtools every time, copy that code into .Rprofile

to restart R:

- Ctrl+Shift+F10 windows
- Cmd+Shift+0 macOS

# load new function

- Ctrl+Shift+L

```{r}

devtools::load_all()

```

# check

- Ctrl+Shift+E

```{r}

check()

```

Errors: severe problems - always fix
warnings: cran won't accept with warnings
notes:

# licenses

MIT license very basic and simple
Apache license provides extra patent protection on top of MIT
CC0: dedicated to public domain
CC-BY: free to share and adapt but must give credit

copyleft: 
  
  - the code that someone else uses and builds on it has to be licensed as well

Semantic Version-ing
Majorversion.minorversion.patchversion.developmentversion

# roxygen2

Title
(blank)
Description
(blank)
@author
@export - include to make the function visible to users
@examples



use_test()

