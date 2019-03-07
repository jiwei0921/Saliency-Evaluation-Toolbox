clc;clear;
models = {'','useCN10_ECSSD'};

Num = length(models);
method_col = {[1,0,0],[0,1,0],[0.5 0.5 0.5],[136 0 21]/255,[255 127 39]/255,...
    [0 162 232]/255,[163 73 164]/255,[1 0 1]};
for i = 1 : Num
    load(models{i});
    mmFmeasure = (1+0.3).*mPre.*mRecall./(0.3.*mPre+mRecall);
    plot([0:255/20:255],mmFmeasure,'Color',method_col{i},'LineWidth',2);
    axis([0 255 0 0.9]);
    grid on;
    hold on;
end
legend( models );