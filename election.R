install.packages('readxl')
library('readxl')

#num_rep <- length(which(toString(elections$PartyName) == "Republican Party"))
elections <- read.xls('Florida.xls')
#The four main political parties
rep <- elections %>%
  mutate(republican_party = factor(ifelse(PartyName == "Republican Party", 'yes', 'no')))

dem <- elections %>%
  mutate(democratic_party = factor(ifelse(PartyName == "Democratic Party", 'yes', 'no')))

write <- elections %>%
  mutate(write_in_party = factor(ifelse(PartyName == "Write-in", 'yes', 'no')))

no_part <- elections %>%
  mutate(no_party = factor(ifelse(PartyName == "No Party Affiliation", 'yes', 'no')))

#counties near Miami-Dade

miami_dade <-elections %>%
  mutate(miami_count = factor(ifelse(CountyName == "Miami-Dade", 'yes', 'no')))

broward <- elections %>%
  mutate(broward_count = factor(ifelse(CountyName == "Broward", 'yes', 'no')))

monroe <- elections %>%
  mutate(monroe_count = factor(ifelse(CountyName = "Monroe", 'yes','no')))

collier <- elections %>%
  mutate(collier_count = factor(ifelse(CountyName == "Collier", 'yes', 'no')))

palm_beach <- elections %>%
  mutate(palm_count = factor(ifelse(CountyName == "Palm Beach", 'yes', 'no')))

#amount of republicans and democrats in total
miami_rep <- length(which(elections$PartyName == 'Republican Party')
                    %in% which(elections$CountyName == 'Miami-Dade'))

miami_dem <- length(which(elections$PartyName == 'Democratic Party'))
intersectionmiami <- elections[grep("Miami-Dade", elections$CountyName)]