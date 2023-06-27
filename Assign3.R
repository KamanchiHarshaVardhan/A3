#assignment 3
library(ggplot2)


#Q1
a <- iris
ggplot(a,aes(x=Sepal.Length,y=Petal.Length))+geom_point(aes(col=Species))

#Q2
b <- txhousing
#ordered bar chart
theme_set(theme_bw())
ggplot(b,aes(x=sales,y=listings))+geom_bar(stat="identity", width=.5, fill="tomato3") + 
  labs(title="Ordered Bar Chart", 
       subtitle="Sales Vs Listings", 
       caption="source: mpg") + 
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
#histogram on categorical variable
ggplot(b,aes(inventory))+geom_bar()+theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
  labs(title="Histogram on Categorical Variable")
#scatterplot
ggplot(mpg, aes(x=listings,y=inventory))+geom_point()


#Q3
titanic <- read.csv("titanic.csv")
titan <- titanic
for(i in 1:712)
{
  if(titanic$Survived[i]==0){
    titan$Survived[i]="died"
  }
  else
  {
    titan$Survived[i]="survived"
  }
}
final_plot <-ggplot(titan,aes(x=Fare,y=Survived,col=Sex))+geom_boxplot()+labs(title="Fare vs Survivial",subtitle = "Irrespective of sex,richer people survived",xlab="Fare",ylab="Null")
final_plot
