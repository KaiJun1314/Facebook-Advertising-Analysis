clear all, clc
load("dataset.mat");


cv = cvpartition(size(data,1),'HoldOut',0.3);
idx = cv.test;
 
% Separate to training and test data
dataTrain = data(~idx,:);
dataTest  = data(idx,:);

NCluster = 3;
NVariable = size(data,2)-1;
k = NCluster + 2;
q = 2;
[centers,U] = defcm(dataTrain, NCluster, q, nominal_index);

% Fuzzy Partition Coefficient
U_trans = U';
F = trace(U * U_trans) / size(dataTrain,1);
disp("Fuzzy Partition Coefficient : " + F)

maxU = max(U,[],2);
distr = zeros(NCluster,NCluster);
index = false(size(dataTrain,1),NCluster);

for i = 1:NCluster
    index(:,i) = U(:,i) == maxU;
    cluster_type = dataTrain(index(:,i),NVariable+1);
    [cnt_unique, unique_a] = hist(cluster_type,unique(cluster_type));
    distr(i, unique_a) = cnt_unique;
    cluster_index(i) = unique_a(cnt_unique == max(cnt_unique));
end

for i = 1:cv.TestSize
    TestData = dataTest(i,:);
    actual(i) = TestData(:,NVariable+1);
    distance_from_each = dist(TestData(:,1:NVariable), dataTrain, nominal_index);
    [minimum,I] = mink(distance_from_each,k,'ComparisonMethod','real');
    cluster = sum(U(I,:));
    predict(i) = cluster_index(cluster == max(cluster));
end
[c_matrix,Result,RefereceResult] = confusion.getMatrix(actual,predict);
