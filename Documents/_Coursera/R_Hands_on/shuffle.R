
deck
deal <- function () {
  deck [1,]
}
deal()
## now we work on shuffle
## first extract all the rows from the dataframe
deck2<- deck[1:52, ]
##now reorder the first and second cards
deck3 <- deck[c(2,1,3:52),]
deck3
##now generate  a random sample of integers 1:52 to use as a row index
random <- sample(1:52 , 52)
##using the random integer created as a row index
deck4 <- function() {
  deck[random, ]
}
head(deck4())
## now wrap these two processes into a single shuffle function
## shuffle takes a data frame and returns a shuffled copy of the data frame
## cards will be an argument for the function
## we will define cards with our 'deck' data.frame
shuffle <- function(cards){
  random<- sample(1:52, 52)
  cards[random, ]
}

deck2 [1, ]
deck2$value
## $$notation
deck2
## reset deck2 to unshuffled and call the ace values
## add a new column of data called 'new' to deck2 with values 1:52
deck2$new <- 1:52
deck2
## Because we know the aces are the 13,26,39,52 cards in the deck
## We can subset them
deck2 [c(13, 26, 39, 52), ]
#single out the values with $
deck2$value [c(13,26,39,52)]
## and replace these value with 14
deck2$value [c(13,26,39,52)]<- c(14,14,14,14)
deck2
## extract the face column from deck2 and test if each value 
## is equal to ace. use R to count how many cards equal ace.

deck$face == "ace"
# Count by adding up (sum)  of the subsetted logical decision
sum(deck$face== "ace")

## Use this test for a shuffled deck to find the location of the aces


deck3 <- shuffle(deck)
deck3
deck3$face == "ace"  ## first build the subset that Id's Aces
### this will be a 52 unit vector of T/F where T=ace
deck3$value[deck3$face == "ace"]
## 


