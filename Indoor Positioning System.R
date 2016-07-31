# Read in 'offline.final.trace.txt' over internet
# It will be read in as a string in the character vector txt


txt = readLines("Data/offline.final.trace.txt")

# Count how many lines begin with #
sum(substr(txt, 1, 1) == "#")

# Count how many lines are in the offline file
length(txt)

# Confirms our assumptions: 166 locations * 8 angles * 110 recordings = 146,080 + 5,132 = 151,392
# 

strsplit(txt[4], ";")[[1]]

tokens = strsplit(txt[4], "[;=,]")[[1]]

tokens[1:10]

tokens[c(2, 4, 6:8, 10)]

tokens[ - ( 1:10 ) ]
