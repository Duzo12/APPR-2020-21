install.packages("rvest")
install.packages("readxl")
library(rvest)
library(dplyr)
library(readxl)


# Uvoz, obdelava in čiščenje podatkov
uvozvarnost2015 <- function(Varnost2015){
  linkVarnost2015 <-read_html("https://www.numbeo.com/crime/rankings_by_country.jsp?title=2015&region=150")
  tabelavarnost2015 <- linkVarnost2015 %>% html_table(fill = TRUE)
  Varnost2015 <- tabelavarnost2015[[2]] %>% select(-Rank) # -Rank spusti stolpec z imenom Rang
  return(Varnost2015)
}

uvozvarnost2016 <- function(Varnost2016){
linkVarnost2016 <-read_html("https://www.numbeo.com/crime/rankings_by_country.jsp?title=2016&region=150&fbclid=IwAR18q8KnRFu9mFaSipSE6DJV1JLjOxZEcuuDDD2doy-v6UfjLPWl2I0avR8")
tabelavarnost2016 <- linkVarnost2016 %>% html_table(fill = TRUE)
Varnost2016 <- tabelavarnost2016[[2]]%>% select(-Rank)
return(Varnost2016)
}

uvozvarnost2017 <- function(Varnost2017){
  linkVarnost2017 <-read_html("https://www.numbeo.com/crime/rankings_by_country.jsp?title=2017&region=150")
  tabelavarnost2017 <- linkVarnost2017 %>% html_table(fill = TRUE)
  Varnost2017 <- tabelavarnost2017[[2]] %>% select(-Rank)
  return(Varnost2017)
}

uvozvarnost2018 <- function(Varnost2018){
  linkVarnost2018 <-read_html("https://www.numbeo.com/crime/rankings_by_country.jsp?title=2018&region=150")
  tabelavarnost2018 <- linkVarnost2018 %>% html_table(fill = TRUE)
  Varnost2018 <- tabelavarnost2018[[2]] %>% select(-Rank)
  return(Varnost2018)
}

uvozvarnost2019 <- function(Varnost2019){
  linkVarnost2019 <-read_html("https://www.numbeo.com/crime/rankings_by_country.jsp?title=2018&region=150")
  tabelavarnost2019 <- linkVarnost2019 %>% html_table(fill = TRUE)
  Varnost2019 <- tabelavarnost2019[[2]] %>% select(-Rank)
  return(Varnost2019)
}

uvozizobrazba <- function(Izobrazba){
  Izobrazba <- read.csv("podatki/Izobrazba.csv", skip = 5, sep = ",")
  obdrzistolpec <- c("Country", "X2015", "X2016","X2017","X2018","X2019")
  Izobrazba <- Izobrazba[ , obdrzistolpec]
  names(Izobrazba) <- c("Country", "2015","2016","2017","2018","2019")
  return(Izobrazba)
}

uvozplace <- function(Dohodek){
  linkdohodek <-read_html("https://en.wikipedia.org/wiki/List_of_countries_by_average_wage")
  Dohodek <- linkdohodek %>% html_table(fill = TRUE)
  Dohodek <- Dohodek[[1]] 
  stolpci <- c("Country","2015","2016","2017","2018","2019")
  Dohodek <- Dohodek[ ,stolpci]
  return(Dohodek)
}

Varnost2015 <- uvozvarnost2015()
Varnost2016 <- uvozvarnost2016()
Varnost2017 <- uvozvarnost2017()
Varnost2018 <- uvozvarnost2018()
Varnost2019 <- uvozvarnost2019()
Izobrazba <- uvozizobrazba()
Dohodek <- uvozplace()
