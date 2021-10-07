# R環境設定

每個使用者安裝習慣不同，如果無法掌握主要程式與套件的安裝位置，會造成無法安裝或安裝後無法執行的問題。在此提供檢測安裝位置設定的方法，以及調節安裝位置的方式。

> 以可重製統計的要求，我所撰寫的程式碼，能在任何人的設備重製相同的執行結果，環境設定應該越簡單越好。另一方面，如果有必要使用特殊環境設定才能執行的套件，公開程式碼必須包裝環境設定參數或可回溯的映像檔。

本節介紹的方法取用自 @gillespieEfficientProgramming2021 ，如果有興趣了解更進一步的設定方法，請參考這本電子書。

## 檢測R環境參數

在console執行以下指令，能獲得的檢測資訊。

```
R.home()
```

R主程式的儲存路徑，通常只能有一個。

```
.libPaths()
```

R套件的預設儲存路徑

```
Sys.getenv("HOME")
```

不啟動專案時，R的預設工作目錄。


```
Sys.getenv("R_LIBS_USER")
```

執行`install.packages()`預設安裝套件的路徑


## .Rprofile設定

".Rprofile"設定console的提示介面；調整預設下載套件的伺服器。編輯完成要重新啓動R，設定才會生效。

```
file.exists("~/.Rprofile")
```

檢查R主程式安裝路徑有沒有存在".Rprofile"

```
file.edit("~/.Rprofile")
```

創建或編輯".Rprofile"

- 設定console提示介面的例子

```
# 自訂歡迎訊息
message("Hi Tony, welcome to R")
# 自訂console提示輸入的前置符號
# (" " 不會出現任何符號)
options(prompt = "Javis> ")
# 輸入指令不完整時的前置符號
options(continue = "+ ")
```

- 設定下載套件的伺服器

```
# `local` creates a new, empty environment
# This avoids polluting .GlobalEnv with the object r
local({
  r = getOption("repos")           
  r["CRAN"] = "https://cran.csie.ntu.edu.tw/"
  options(repos = r)
})
```

## .Renviron設定

".Renviorn"設定套件安裝路徑

```
file.edit("~/.Renviron")
```

創建或編輯".Renviron"

- 編輯範例：設定套件安裝路徑

```
# Linux
R_LIBS=~/R/library

# Windows
R_LIBS=C:/R/library
```
