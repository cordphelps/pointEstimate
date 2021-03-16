
spiderArea <- function(tibbleData, tLabel, dotFill) {

	gg <- ggplot(data=tibbleData, aes(y=positionX, x=positionY)) +

  			geom_jitter(aes(size=Thomisidae..crab.spider.), 
  			            shape=21, fill = dotFill ) +

  			theme_bw() +

  			scale_y_continuous(limits=c(-10, 220), breaks=c(seq(from=0, to=220, by=16))) +
        	scale_x_continuous(limits=c(0, 9), breaks=c(seq(from=0, to=9, by=1))) +

  			labs(	y = "trap position\ndistance from vineyard edge\n(16 foot trap separation)",
         		 	x = paste( "vineyard row position\ndistance from transect edge\n(10 foot row separation)", sep=""), 
 					title = paste(tLabel, " transect spider counts\n",
 					              "by transect position\n",
 					              "(min = 0, max = 4)", sep=""))

  	return(gg)

}