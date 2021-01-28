install.packages('rtide')
help('rtide')
dat = tide_height('Monterey Harbor',from = as.Date('2016-09-05'), 
                  to = as.Date('2016-09-07'), minutes = 10, tz ='PST8PDT')
library(rtide)
help(package=rtide)
tide_stations(stations=".*", harmonics=rtide::harmonics)
"San Mateo Bridge (west end), San Francisco Bay, California"  #tidestation
dat = tide_height('Monterey Harbor',from = as.Date('2016-09-05'), 
                  to = as.Date('2016-09-07'), minutes = 10, tz ='PST8PDT')
