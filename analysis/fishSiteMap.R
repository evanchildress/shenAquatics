library(plotHacks)
library(mapShen)

sites<-aqData("sites")

tiff.par("C:/Users/echildress/Documents/presentations/fishSites.tiff",width=5,height=8,mar=c(0,0,0,0))
mapShenStreams(streamCol = 'gray20',bg='black',border="darkgreen")

mapAqSites(siteId=sites[FISH_SiteType=="Primary",SiteID],pch=19,col="cornflowerblue")
mapAqSites(siteId=sites[FISH_SiteType=="Secondary",SiteID],pch=19,col="darkseagreen")

legend("left",legend=c("Primary","Secondary"),
       col=c("cornflowerblue","darkseagreen"),pch=19,bg='black',text.col='gray90',
       text.font=2,pt.cex=1,cex=1.5)

dev.off()

tiff.par("C:/Users/echildress/Documents/presentations/aqinSites.tiff",width=5,height=8,mar=c(0,0,0,0))
mapShenStreams(streamCol = 'gray20',bg='black',border="darkgreen")

mapAqSites(siteId=sites[AQIN_SiteType=="Primary",SiteID],pch=19,col="cornflowerblue")
mapAqSites(siteId=sites[AQIN_SiteType=="Secondary",SiteID],pch=19,col="darkseagreen")

legend("left",legend=c("Primary","Secondary"),
       col=c("cornflowerblue","darkseagreen"),pch=19,bg='black',text.col='gray90',
       text.font=2,pt.cex=1,cex=1.5)

dev.off()
