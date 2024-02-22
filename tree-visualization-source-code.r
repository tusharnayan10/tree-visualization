##############################################################################################################

# - Traditional Tree visualisation

# Install and load required packages
install.packages("ape")
library(ape)

# Sample data: Creating a random tree
set.seed(123)
tree <- rtree(20)

# Plotting the tree
plot(tree, cex=0.7, edge.width=2)

##############################################################################################################

# - Radial Tree visualisation

# Install and load required packages
install.packages("phytools")
library(phytools)

# Sample data: Creating a random tree
set.seed(123)
tree <- rtree(20)

# Plotting the radial tree
plotTree(tree, type="fan", cex=0.7, edge.width=2)

##############################################################################################################
# - TreeMAP visualisation
# Install and load required packages
install.packages("igraph")
library(igraph)

# Sample data: Creating a tree structure
tree <- make_tree(10, children = 2, mode = "undirected")

# Plotting the layered tree
plot(tree, layout=layout_as_tree, vertex.size=15, vertex.label.cex=0.8)


library(plotly)

# Define hierarchical data
labels <- c("Eve", "Cain", "Seth", "Enos", "Noam", "Abel", "Awan", "Enoch", "Azura")
parents <- c("", "Eve", "Eve", "Seth", "Seth", "Eve", "Eve", "Awan", "Eve")

# Create TreeMap
fig <- plot_ly(
  type = "treemap",
  labels = labels,
  parents = parents
)

# Customize layout
fig <- fig %>% layout(
  title = "Family Tree",
  margin = list(l = 10, r = 10, t = 50, b = 10)  # Adjust margin for better visualization
)

# Show TreeMap
fig

##############################################################################################################
// Code Taken from https://r-graph-gallery.com/treemap.html

# library
install.packages("treemap")
library(treemap)

# Build Dataset
group <- c(rep("group-1",4),rep("group-2",2),rep("group-3",3))
subgroup <- paste("subgroup" , c(1,2,3,4,1,2,1,2,3), sep="-")
value <- c(13,5,22,12,11,7,3,1,23)
data <- data.frame(group,subgroup,value)

# treemap
treemap(data,
        index=c("group","subgroup"),
        vSize="value",
        type="index"
) 

