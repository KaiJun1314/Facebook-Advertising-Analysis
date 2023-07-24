clear all, clc
data = readtable("KAG_conversion_data_original.csv");

age = zeros(size(data,1),1);
age(strcmp(data.age, '30-34'),1) = 32;
age(strcmp(data.age, '35-39'),1) = 37;
age(strcmp(data.age, '40-44'),1) = 42;
age(strcmp(data.age, '45-49'),1) = 47;
data.age = age;

data.age = grp2idx(categorical(data.age));
data.gender = grp2idx(categorical(data.gender));
data.interest = grp2idx(categorical(data.interest));

data = removevars(data, {'ad_id', 'fb_campaign_id', 'xyz_campaign_id','interest'});
NVariable = size(data,2)-1;
data = table2array(data);

nominal_index = false(1,NVariable);
nominal_index([1 2 3]) = true; % age, gender, interest

save('dataset.mat','data', 'nominal_index');
