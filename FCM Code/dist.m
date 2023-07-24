function z = dist(data, centres, nominal_index)

SzV = size(data,1); %Number of Data
SzM = size(centres,1); %Number of centres 
z = zeros(SzV,SzM); %Create array (no. data, no. center)

Ctr_nominal = centres(:, nominal_index);
Ctr = centres(:, ~nominal_index);

for i = 1:SzV
    V_nominal = data(i, nominal_index);
    V = data(i, ~nominal_index);
    euclidean_dist = pdist2(V, Ctr, 'euclidean');
    hamming_dist = pdist2(V_nominal, Ctr_nominal, 'hamming');
    z(i,:) = euclidean_dist + hamming_dist;
end

