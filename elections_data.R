install.packages('readxl')
install.packages("magrittr") # package installations are only needed the first time you use it
install.packages("dplyr")    # alternative installation of the %>%
install.packages("tidyverse")
library('magrittr') # needs to be run every time you start R and want to use %>%
library('dplyr')
library('readxl')
library('tidyverse')

#num_rep <- length(which(toString(elections$PartyName) == "Republican Party"))


#************************
#Florida election results
#************************


elections <- fakeelec

#amount of republicans and democrats in total
florida_rep <- length(which(elections$PartyName == 'Republican Party')
                    %in% which(elections$CountyName == 'Miami-Dade'))

florida_dem <- length(which(elections$PartyName == 'Democratic Party'))

# Miami-Dade Elections data

miami_rep <- summary((which(elections$CountyName == 'Miami-Dade')) %in% (which(elections$PartyName == 'Republican Party')))


miami_dem <- summary((which(elections$CountyName == 'Miami-Dade')) %in% (which(elections$PartyName == 'Democratic Party')))

miami_rep
miami_dem

#Monroe Elections
monroe_rep <- summary((which(elections$CountyName == 'Monroe')) %in% (which(elections$PartyName == 'Republican Party')))


monroe_dem <- summary((which(elections$CountyName == 'Monroe')) %in% (which(elections$PartyName == 'Democratic Party')))

monroe_rep
monroe_dem

#Broward Elections
broward_rep <- summary((which(elections$CountyName == 'Broward')) %in% (which(elections$PartyName == 'Republican Party')))

broward_dem <- summary((which(elections$CountyName == 'Broward')) %in% (which(elections$PartyName == 'Democratic Party')))

broward_rep
broward_dem

#Collier Elections
collier_rep <- summary((which(elections$CountyName == 'Collier')) %in% (which(elections$PartyName == 'Republican Party')))

collier_dem <- summary((which(elections$CountyName == 'Collier')) %in% (which(elections$PartyName == 'Democratic Party')))

collier_rep
collier_dem

"
California Election results
"