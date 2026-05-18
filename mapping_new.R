## MAPPING - VISUALIZATION
install.packages("rworldmap")
library(rworldmap)

library(readxl)
antibiotics_use <- read_excel("NEW ANALYSIS/antibiotics_use.xlsx", sheet = "final_antibio_total")

iso_order <- antibiotics_use$codes
year <- antibiotics_use$`2020`
abu <- as.data.frame(iso_order)
abu <- cbind(abu,year)

# combine data frame with map
mymap<- joinCountryData2Map(abu, 
                                     joinCode = "ISO3",
                                     nameJoinColumn = "iso_order")


par(mai=c(0.6,0.1,0.4,0.1),xaxs="i",yaxs="i", cex = 1)

plot <- mapCountryData(mymap
                       , nameColumnToPlot="year"
                       , oceanCol = "azure2"
                       , missingCountryCol = gray(.8)
                       , mapTitle = "2020"
                       , addLegend=FALSE)


do.call(addMapLegend, c(plot, legendWidth=0.7, legendMar = 3.5))



# FOR EUROPE

par(mai=c(0.6,0.1,0.4,0.1),xaxs="i",yaxs="i", cex = 1)
plot <- mapCountryData(mymap
                       , nameColumnToPlot="year"
                       , oceanCol = "azure2"
                       , missingCountryCol = gray(.8)
                       , mapTitle = "2020 - Europe"
                       , mapRegion = "Europe"
                       , addLegend=FALSE)


do.call(addMapLegend, c(plot, legendWidth=0.7, legendMar = 2.6))



# 
# 
# data <- antibiotics_use[2: 11]
# data <- data[-2]
# 
# 
# 
# # 1. Her ülke için Var1 ve Var2 arasındaki korelasyonu hesapla
# cor_by_country <- df %>%
#   group_by(country) %>%
#   summarise(correlation = cor(gini, robbery, use = "complete.obs")) %>%
#   ungroup()
# 
# # 2. Heatmap çizimi
# ggplot(cor_by_country, aes(x = "", y = reorder(country, correlation), fill = correlation)) +
#   geom_tile(color = "white", width = 0.6) +
#   scale_fill_gradient2(
#     low = "blue", mid = "white", high = "red",
#     midpoint = 0, limits = c(-1, 1),
#     name = "Correlation"
#   ) +
#   labs(
#     title = "Robbery",
#     x = NULL, y = NULL
#   ) +
#   coord_fixed(ratio = 0.1) +
#   theme_minimal() +
#   theme(
#     axis.text.x = element_blank(),
#     axis.ticks.x = element_blank(),
#     axis.text.y = element_text(size = 8),
#     panel.grid = element_blank(),
#     
#     legend.position = "right",
#     legend.key.height = unit(0.4, "cm"),
#     legend.key.width = unit(0.5, "cm"),
#     legend.title = element_text(size = 8),
#     legend.text = element_text(size = 8),
#     plot.title = element_text(size = 10, face = "bold", hjust = 0.5)  # 👈 burası başlığı küçültür
#   )
# 
# 
# 
# 
# 
# 
# 
