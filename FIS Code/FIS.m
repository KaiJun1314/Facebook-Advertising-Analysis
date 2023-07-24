data = readtable("KAG_conversion_data_original.csv");
result = data(:,11);
result = table2array(result);
data = data(:,7:10);
data = table2array(data);
fis = readfis('fuzzy23.fis');
for i = 1:size(data,1)
output = evalfis(fis, data(i,:));

predict(i,:)= output;
end

for i = 1:size(predict)
    value = predict(i);
    if value <= 1
        value = 1;
    elseif value >=2 && value <= 4
        value = 2;
    else
        value = 3;
    end
    predict(i) = value;
end

for i = 1:size(result)
    value = result(i);
    if value <= 1
        value = 1;
    elseif value >=2 && value <= 4
        value = 2;
    else
        value = 3;
    end
    result(i) = value;
end

[c_matrix,Result,RefereceResult] = confusion.getMatrix(result,predict);