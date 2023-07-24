

[idxImpressions, CImpressions] = kmeans(data(:,[3]),3)
[idxClicks, CClicks] = kmeans(data(:,[4]),3)
[idxSpent, CSpent] = kmeans(data(:,[5]),3)
[idxTotalConversion, CTotalConversion] = kmeans(data(:,[6]),3)
[idxApprovedConversion, CApprovedConversion] = kmeans(data(:,[7]),3)

Impressions = data(:,3)
Impressions = table(idxImpressions,Impressions)

cluster1Impressions=Impressions(idxImpressions==1,:)
max(cluster1Impressions.Impressions)
min(cluster1Impressions.Impressions)

cluster2Impressions=Impressions(idxImpressions==2,:)
max(cluster2Impressions.Impressions)
min(cluster2Impressions.Impressions)

cluster3Impressions=Impressions(idxImpressions==3,:)
max(cluster3Impressions.Impressions)
min(cluster3Impressions.Impressions)


Clicks = data(:,4)
Clicks = table(idxClicks,Clicks)

cluster1Clicks=Clicks(idxClicks==1,:)
max(cluster1Clicks.Clicks)
min(cluster1Clicks.Clicks)

cluster2Clicks=Clicks(idxClicks==2,:)
max(cluster2Clicks.Clicks)
min(cluster2Clicks.Clicks)

cluster3Clicks=Clicks(idxClicks==3,:)
max(cluster3Clicks.Clicks)
min(cluster3Clicks.Clicks)


Spent = data(:,5)
Spent = table(idxSpent,Spent)

cluster1Spent=Spent(idxSpent==1,:)
max(cluster1Spent.Spent)
min(cluster1Spent.Spent)

cluster2Spent=Spent(idxSpent==2,:)
max(cluster2Spent.Spent)
min(cluster2Spent.Spent)

cluster3Spent=Spent(idxSpent==3,:)
max(cluster3Spent.Spent)
min(cluster3Spent.Spent)


TotalConversion = data(:,6)
TotalConversion = table(idxTotalConversion,TotalConversion)

cluster1TotalConversion=TotalConversion(idxTotalConversion==1,:)
max(cluster1TotalConversion.TotalConversion)
min(cluster1TotalConversion.TotalConversion)

cluster2TotalConversion=TotalConversion(idxTotalConversion==2,:)
max(cluster2TotalConversion.TotalConversion)
min(cluster2TotalConversion.TotalConversion)

cluster3TotalConversion=TotalConversion(idxTotalConversion==3,:)
max(cluster3TotalConversion.TotalConversion)
min(cluster3TotalConversion.TotalConversion)


ApprovedConversion = data(:,7)
ApprovedConversion= table(idxApprovedConversion,ApprovedConversion)

cluster1ApprovedConversion=ApprovedConversion(idxApprovedConversion==1,:)
max(cluster1ApprovedConversion.ApprovedConversion)
min(cluster1ApprovedConversion.ApprovedConversion)

cluster2ApprovedConversion=ApprovedConversion(idxApprovedConversion==2,:)
max(cluster2ApprovedConversion.ApprovedConversion)
min(cluster2ApprovedConversion.ApprovedConversion)

cluster3ApprovedConversion=ApprovedConversion(idxApprovedConversion==3,:)
max(cluster3ApprovedConversion.ApprovedConversion)
min(cluster3ApprovedConversion.ApprovedConversion)



