library(tidyverse)
library(RSelenium)
library(wdman)
library(netstat)

# Criar um servidor selenium

rD <- rsDriver(browser = "firefox",
               chromever = NULL,
               verbose = F)


# Interagir com o remDR

remDr <- rD$client

# Acessar página do instagram

remDr$navigate("https://www.instagram.com/nikolasferreiradm/")

# Extraindo informações

teste <- remDr$executeScript("
    return window.getComputedStyle(document.querySelector('.x1ms8i2q'), '::before').content;
")


remDr$close()
rD$server$stop()
