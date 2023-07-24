clear all, clc
data = readtable("KAG_conversion_data_original.csv");

% Cluster Label & New Variable
for i = 1:size(data)
    value = data.Approved_Conversion(i);
    if value <= 1
        value = 1;
    elseif value >=2 && value <= 6
        value = 2;
    else
        value = 3;
    end
    data.Approved_Conversion(i) = value;
end

for i = 1:size(data)
    value = data.Total_Conversion(i);
    if value <= 6
        value = 1;
    elseif value >=7 && value <= 19
        value = 2;
    else
        value = 3;
    end
    data.Total_Conversion(i) = value;
end

for i = 1:size(data)
    value = data.Impressions(i);
    if value <= 254344
        value = 1;
    elseif value >=256598 && value <= 797234
        value = 2;
    else
        value = 3;
    end
    data.Impressions(i) = value;
end

for i = 1:size(data)
    value = data.Clicks(i);
    if value <= 47
        value = 1;
    elseif value >=48 && value <= 149
        value = 2;
    else
        value = 3;
    end
    data.Clicks(i) = value;
end


for i = 1:size(data)
    value = data.Spent(i);
    if value <= 71.58
        value = 1;
    elseif value >=71.59 && value <= 223.19
        value = 2;
    else
        value = 3;
    end
    data.Spent(i) = value;
end

data = removevars(data, {'ad_id', 'fb_campaign_id', 'xyz_campaign_id','interest','age','gender'});
NVariable = size(data,2)-1;
data = table2array(data);

nominal_index = false(1,NVariable);
nominal_index([1 2 3]) = true; % age, gender, interest

save('dataset.mat','data', 'nominal_index');
