function [Centres, membership] = defcm(data,NCluster,q, nominal_index)

[NData, NVariable] = size(data);
labeled_cluster = onehotencode(categorical(data(:,NVariable)),2);
data = data(:,1:NVariable - 1);

index = randi([1 NData],1,NCluster);
Centres = data(index,:);

stop_condition = 1e-7;
Pre_M = zeros(NData, NCluster);
max_iter = 100;

for k = 1:max_iter
    distance = dist(data, Centres, nominal_index);
    membership = member(distance, q, 0.5, labeled_cluster);
    ClustSums = sum(membership.^q);
    z = membership.^q ./ (ones(NData,1) * ClustSums);
    for i = 1:NCluster
        w = z(:,i) * ones(1,sum(~nominal_index));
        Centres(i,~nominal_index) = sum(data(:,~nominal_index) .* w);
        for j = find(nominal_index == 1)
            [C, ia, ic] = unique(data(:,j));
            output = [C cell2mat(accumarray(ic, 1:numel(ic), [], @(x){sum(membership(x,i),1)}))];
            Centres(i,j) = output(output(:,2) == max(output(:,2)),1);
        end
    end

    if max(max(abs(membership - Pre_M))) < stop_condition
       break;
    else
        Pre_M = membership;
    end
end