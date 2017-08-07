function [] = show_distribution(number_of_people, number_of_iterations, no_of_bins)
data = zeros(number_of_people,2);
data(:,1) = 1:number_of_people; data(:,2) = 50;

for _ = 1:number_of_iterations
r = randi([1,number_of_people],1,2);
won = randi([1,2],1,1);
data(r(1,won),2) = data(r(1,won),2) +1;
data(r(1,3-won),2) = data(r(1,3-won),2) +1;
end
freq = data(:,2);
t=tabulate(freq);
bar(t(:,1),t(:,2));
end
