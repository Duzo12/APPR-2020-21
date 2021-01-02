library(knitr)
library(rvest)
library(gsubfn)
library(tidyr)
library(tmap)
library(shiny)
library(readr)
library(dplyr)
library(tidyverse)
library(ggplot2)
library(rgdal)
library(rgeos)
library(maptools)
library(stringr)
library(RColorBrewer)
library(viridis)
library(hrbrthemes)
library(scales)
library(waffle)
library(ggthemes)


options(gsubfn.engine="R")

# Uvozimo funkcije za pobiranje in uvoz zemljevida.
source("lib/uvozi.zemljevid.r", encoding="UTF-8")


