library(XML)

document <- xmlTreeParse("foods.xml", useInternalNodes = T)

rootNode <- xmlRoot(document)
xmlName(rootNode)

names(rootNode)
class(rootNode)

rootNode[[2]]
names(rootNode[[2]])
rootNode[[2]][["price"]]

foods <- xmlToDataFrame(document)

document <- xmlTreeParse("books.xml", useInternalNodes = T)
books <-  xmlToDataFrame(document)