
impressions = data(:,1)
clicks = data(:,2)
spent = data(:,3)
totalConversion = data(:,4)
approvedConversion = data(:,5)

t3 = table(impressions,approvedConversion)
t4 = table(clicks,approvedConversion)
t5 = table(spent,approvedConversion)
t6 = table(totalConversion,approvedConversion)

G3 = groupcounts(t3,{'impressions','approvedConversion'})
G4 = groupcounts(t4,{'clicks','approvedConversion'})
G5 = groupcounts(t5,{'spent','approvedConversion'})
G6 = groupcounts(t6,{'totalConversion','approvedConversion'})

all = table(impressions,clicks,spent,totalConversion,approvedConversion)
ga = groupcounts(all,{'impressions','clicks','spent','totalConversion','approvedConversion'})
