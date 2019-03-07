clc;
clear;
%path='C:\Users\Administrator\Desktop\mat-cvpr17_v1\ECSSD\';
path='.\PR_results\';
dirpath=dir([path '*.mat']);
method1 = cell(length(dirpath),3);

str=['r','r','b','b','c','c','m','m','k','k','y','y','g','g','r','r','m','m','k','k','r','r','r','r','r'];

rr=[];
Fmeasure=[]; 
aAUC=[];
method2 = cell(length(dirpath),1);
for i=1:length(dirpath)
  load([path dirpath(i).name]);
  Fmeasure=[Fmeasure,mFmeasure];
  aAUC=[aAUC,AUC];                     %AUC 图像修改部分
%  method2(i)=alg_dir{i}(1);
  method2{i}=dirpath(i).name(1:end-4);
  
end
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
        figure(5);
        barMsra = [Fmeasure' aAUC'];
        bar(barMsra );
        set( gca, 'xtick', 1:1:length(dirpath) ),
  
        set( gca ,'xticklabels',  method2 , 'fontsize', 8 );
        legend('Precision','Recall','Fmeasure','AUC');      %AUC 图像修改部分
        %legend('Precision','Recall','Fmeasure');
              grid on;
   %     saveas(  figure(5), [basedir,'SED1_bar.fig']);

% xlabel('Recall');
% ylabel('Precision');
%legend(dirpath(1).name(5:end),dirpath(2).name(5:end),dirpath(3).name(5:end),dirpath(4).name(5:end),dirpath(5).name(5:end),dirpath(6).name(5:end),dirpath(7).name(5:end),dirpath(8).name(5:end),dirpath(9).name(5:end),dirpath(10).name(5:end),dirpath(11).name(5:end),dirpath(12).name(5:end),dirpath(13).name(5:end),dirpath(14).name(5:end),dirpath(15).name(5:end),dirpath(16).name(5:end),dirpath(17).name(5:end),dirpath(18).name(5:end),dirpath(19).name(5:end),dirpath(20).name(5:end),dirpath(21).name(5:end));
%legend(dirpath(1).name(8:end-4),dirpath(2).name(8:end-4),dirpath(3).name(8:end-4),dirpath(4).name(8:end-4),dirpath(5).name(8:end-4),dirpath(6).name(8:end-4),dirpath(7).name(8:end-4),dirpath(8).name(8:end-4),dirpath(9).name(8:end-4),dirpath(10).name(8:end-4),dirpath(11).name(8:end-4),dirpath(12).name(8:end-4),dirpath(13).name(8:end-4),dirpath(14).name(8:end-4));
%legend(dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4))%,dirpath(9).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4));%,dirpath(12).name(1:end-4),dirpath(13).name(1:end-4));
%legend(str(1,:),str(2,:),str(3,:),str(4,:),str(5,:),str(6,:),str(7,:),str(8,:),str(9,:),str(10,:),str(11,:),str(12,:),str(13,:),str(14,:),str(15,:),str(16,:),str(17,:));
%legend(dirpath(1).name(2:end-4),dirpath(2).name(2:end-4),dirpath(3).name(2
%legend(dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),...
%dirpath(5).name(1:end-4),dirpath(6).name(1:end-4))%,dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),...
% dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4),dirpath(13).name(1:end-4),...
% dirpath(14).name(1:end-4),dirpath(15).name(1:end-4),dirpath(16).name(1:end-4),dirpath(17).name(1:end-4),...
% dirpath(18).name(1:end-4),dirpath(19).name(1:end-4),dirpath(20).name(1:end-4),dirpath(21).name(1:end-4))%,...
%dirpath(22).name(1:end-4),dirpath(23).name(1:end-4));
grid on;
% save 300 AUC;