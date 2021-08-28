# (APPENDIX) Appendices {-} 

<!---
# Exporting files from the server

If you are using the R server, you may need to export files to share them with other people or submit them for your assignments.

* First, make sure you have saved any changes you have made to the file. Do this by clicking "File - Save", Ctrl + S, or clicking the save icon. If all your changes have been saved, the save icon will be greyed out. If there are new unsaved changes, you will be able to click the icon.
* Select the file you and to download in the files pane (bottom right) by ticking the box next to it, then click "More - Export" and save the file to your computer.
* If you do not have R installed, DO NOT try to open it on your computer. If you do, it will open in Word, Endnote or similar, and it may corrupt your code. Only open the file if you have R and R Studio installed.
* If you want to double check that this file is definitely the right one to submit for an assignment, you can re-upload it to the server and open it again to make sure it has the answers in it.
--->


# 作業資料管理架構建議 

參考來源：[Github classroom for students](https://github.com/jfiksel/github-classroom-for-students) by [Jacob Fiksel](https://github.com/jfiksel)

假設你的電腦主要磁碟機有一個資料夾`Users/myname/`，本課程學習檔案可依此架構存放。

```
Users
│
│
│
└───myname
    │
    │
    │
    └───university-documents
        │
        │
        |
        |---rstat-project-fall-2021
            |
            |
            |
            |---assignments   ## 個人作業
            |
            |
            |---lectures      ## 個人上課筆記
```


# Git and Github

(協同寫作)


# Installing R 

## Why should I install R on my computer?

The R Server is cuts down on a lot of installation problems and it means that you have all the packages and functions you need already installed. However, it requires an internet connection to use and additional when it comes time to submit your R assessments, if you don't have R on your computer it means that you won't be able to open the files you download from the server to check they're ok before you submit them.

There are some great detailed walkthrough videos by [Danielle Narvarro on YouTube](https://www.youtube.com/playlist?list=PLRPB0ZzEYegOZivdelOuEn-R-XUN-DOjd) re: how to install R on both Windows and Mac.

## Windows

If you are using Windows, you should download and install the following:

* [R](https://cran.r-project.org/bin/windows/base/)
* [R Studio](https://rstudio.com/products/rstudio/download/#download)
* [RTools](https://cran.r-project.org/bin/windows/Rtools/)

Once you've installed all three programs, restart your computer. Then, open RStudio (not R) and run the below code:


```r
install.packages("tidyverse")
```

This will install the `tidyverse` package on your computer. If you have any problems installing R, please book into a GTA session as they should be able to help you with any installation problems.

## Mac

If you are using a Mac, you should download and install the following:

* [R](https://www.stats.bris.ac.uk/R/)  
* [R Studio](https://rstudio.com/products/rstudio/download/#download)  
* [XQuartz](https://www.xquartz.org/)  

If you have any issues installing R on your Mac, first, we recommend that you watch the [walkthrough by Danielle Navarro](https://www.youtube.com/watch?v=ay25o485YXs&list=PLRPB0ZzEYegOZivdelOuEn-R-XUN-DOjd&index=1&t=113s). 

If you have further issues on Mac, you may find this video helpful [walkthrough video](https://www.youtube.com/watch?v=90IdULVGmYY). Additionally, if you are using a Mac with the Catalina OS, we also recommend you read this [troubleshooting guide](https://psyteachr.github.io/FAQ/installing-r-and-rstudio.html#i-am-using-macos-10.15-catalina)

Once you've installed all three programs, restart your computer. Then, open RStudio (not R) and run the below code:


```r
install.packages("tidyverse")
```

This will install the `tidyverse` package on your computer. If you have any problems installing R, please book into a GTA session as they should be able to help you with any installation problems.

## Chromebooks

> 台灣有多少學生使用？

Please note that you cannot currently install R on a Chromebook, please use the R Server.

# Updating R, RStudio, and packages

From time-to-time, updated version of R, RStudio, and the packages you use (e.g., ggplot) will become available. Remember that each of these are separate, so they each have a different process and come with different considerations. We recommend updating to the latest version of all three at the start of each academic year.

## Updating RStudio

RStudio is the easiest component to update. Typically, updates to RStudio won't affect your code, instead they add in new features, like spell-check or upgrades to what RStudio can do. There's usually very little downside to updating RStudio and it's easy to do.

Click `Help - Check for updates`

<div class="figure" style="text-align: center">
<img src="images/update_rstudio.jpg" alt="Updating RStudio" width="100%" />
<p class="caption">(\#fig:img-updaterstudio)Updating RStudio</p>
</div>

If an update is available, it will prompt you to download it and you can install it as usual.

## Updating packages

Package developers will occasionally release updates to their packages. This is typically to add in new functions to the package, or to fix or amend existing functions. **Be aware that some package updates may cause your previous code to stop working**. This does not tend to happen with minor updates to packages, but occasionally with major updates, you can have serious issues if the developer has made fundamental changes to how the code works. For this reason, we recommend updating all your packages once at the beginning of each academic year (or semester) - don't do it before an assessment or deadline just in case!

To update an individual package, the easiest way is to use the `install.packages()` function, as this always installs the most recent version of the package.


```r
install.packages("tidyverse")
```

To update multiple packages, or indeed all packages, RStudio provides helpful tools. Click `Tools - Check for Package Updates`. A dialogue box will appear and you can select the packages you wish to update. Be aware that if you select all packages, this may take some time and you will be unable to use R whilst the process completes.

<div class="figure" style="text-align: center">
<img src="images/update_packages.jpg" alt="Updating packages with RStudio" width="100%" />
<p class="caption">(\#fig:img-updateall)Updating packages with RStudio</p>
</div>

Occasionally, you might have a few problem packages that seemingly refuse to update, for me, `rlang` and `vctrs` cause me no end of trouble. These aren't packages that you will likely every explicitly load, but they're required beneath the surface for R to do things like knit your Markdown files etc.

If you try to update a package and get an error message that says something like `Warning in install.packages : installation of package ‘vctrs’ had non-zero exit status` or perhaps `Error in loadNamespace(i, c(lib.loc, .libPaths()), versionCheck = vI[[i]]) :  namespace 'rlang' 0.4.9 is being loaded, but >= 0.4.10 is required` one solution I have found is to manually uninstall the package, restart R, and then install the package new, rather than trying to update an existing version. The `installr` package also has a useful function for uninstalling packages.


```r
# Load installr
library(installr)

# Uninstall the problem package
uninstall.packages("package_name")

# Then restart R using session - restart R
# Then install the package fresh

install.packages("package")
```

## Updating R

Finally, you may also wish to update R itself. The key thing to be aware of is that when you update R, if you just download the latest version from the website, you will lose all your packages. The easiest way to update R and not cause yourself a huge headache is to use the `installr` package. When you use the `updateR()` function, a series of dialogue boxes will appear. These should be fairly self-explanatory but there is a [full step-by-step guide available](https://www.r-statistics.com/2015/06/a-step-by-step-screenshots-tutorial-for-upgrading-r-on-windows/) for how to use `installr`, the important bit is to select "Yes" when it asked if you would like to copy your packages from the older version of R.


```r
# Install the installr package
install.packages("installr")

# Load installr
library(installr)

# Run the update function
updateR()
```

As always, if you're having issues, please ask on Teams or book into a GTA session.
