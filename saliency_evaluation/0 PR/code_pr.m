clc;
clear;
% path='/media/iiau/win7_file/kyq/3/mat4/';
%path = './';
path = '.\PR_results\';
dirpath=dir([path '*.mat']);
%dirpath{0} = dir([path '(12w_cwm).mat']);
%dirpath{1} = dir([path '(18w_ori).mat']);
%str=zeros(23,5);
str=['m','r','g','y','c','b','k','m','r','g','y','c','b','k'];%'--b','--c','--k','--y','--m'
%str=['m','r','g','y','k','c','b','--b'];
%aa=[10,11,1,6,22,23,14,15,18,19];
% % str=['r','r','b','b','g','g','k','k','m','m'];
% str=['r','b','g','k','m']; %������ɫ
rr=[];
for i=1:length(dirpath)
  %  load([path num2str(aa(i)) '-filter.mat']);
  load([path dirpath(i).name]);
  
     plot(mRecall,mPre,str(i),'linewidth',2);
 
 
    hold on;
   display([dirpath(i).name(1:end-4)])% '----' num2str(a)]);
   aa(i)=AUC;
   rr=[rr;mRecall;mPre];
  %  dirpath(i).name
 %  display(num2str(max(pM)));
end 
xlabel('Recall');
ylabel('Precision');

 legend(...
dirpath(1).name(1:end-4),dirpath(2).name(1:end-4));
%,dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4)),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4);%,dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4));%,dirpath(4).name(1:end-4))%,dirpath(5).name(1:end-4),dirpath(6).name(1:end-4))
%,dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4)
%,dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4)
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4));,dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4),dirpath(13).name(1:end-4)
%,dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4)
%legend(...,dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4)
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),,dirpath(8).name(1:end-4),,dirpath(7).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4));  ,dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4)%���߱�ע
%legend(...
 %dirpath(1).name(1:end-4));  %���߱�ע
%dirpath(13).name(1:end-4),dirpath(14).name(1:end-4),dirpath(15).name(1:end-4));
%,dirpath(16).name(1:end-4));
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4));

% dirpath(17).name(1:end-4)...
%);

grid
save pr AUC;







%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:length(dirpath)
  %  load([path num2str(aa(i)) '-filter.mat']);
  load([path dirpath(i).name]);
  if i==1
    plot(mRecall,mPre,str(i),'linewidth',3);
  else
      plot(mRecall,mPre,str(i),'linewidth',2);
  end
 
    hold on;
   display([dirpath(i).name(3:end-4)])% '----' num2str(a)]);
   aa(i)=AUC;
   rr=[rr;mRecall;mPre];
  %  dirpath(i).name
 %  display(num2str(max(pM)));
end 
xlabel('Recall');
ylabel('Precision');

 legend(...
     dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4)),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4);%,dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4));
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4))%,dirpath(4).name(1:end-4))
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4))

%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4))
%dirpath(1).name(1:end-4));%,dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4));
%,dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4)
%,dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4)
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4));,dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4),dirpath(13).name(1:end-4)
%,dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4)
%legend(...,dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4)
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),,dirpath(8).name(1:end-4),,dirpath(7).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4));  ,dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4)%���߱�ע
%legend(...
 %dirpath(1).name(1:end-4));  %���߱�ע
%dirpath(13).name(1:end-4),dirpath(14).name(1:end-4),dirpath(15).name(1:end-4));
%,dirpath(16).name(1:end-4));
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4));

% dirpath(17).name(1:end-4)...
% );

grid
save pr AUC;





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:length(dirpath)
  %  load([path num2str(aa(i)) '-filter.mat']);
  load([path dirpath(i).name]);
  if mod(i,2)
    plot(mRecall,mPre,str(i),'linewidth',2.5);
  else
      plot(mRecall,mPre,[str(i) '-'],'linewidth',1.5);
  end
 
    hold on;
   display([dirpath(i).name(3:end-4)])% '----' num2str(a)]);
   aa(i)=AUC;
   rr=[rr;mRecall;mPre];
  %  dirpath(i).name
 %  display(num2str(max(pM)));
end 
xlabel('Recall');
ylabel('Precision');

 legend(...
     dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4)),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4);%,dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4));
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4))%,dirpath(4).name(1:end-4))
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4))

%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4));
%dirpath(1).name(1:end-4));%,dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4));
%,dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4)
%,dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4)
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4));,dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4),dirpath(13).name(1:end-4)
%,dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4),dirpath(10).name(1:end-4)
%legend(...,dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4),dirpath(9).name(1:end-4)
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),,dirpath(8).name(1:end-4),,dirpath(7).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4));  ,dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4),dirpath(10).name(1:end-4),dirpath(11).name(1:end-4),dirpath(12).name(1:end-4)%���߱�ע
%legend(...
 %dirpath(1).name(1:end-4));  %���߱�ע
%dirpath(13).name(1:end-4),dirpath(14).name(1:end-4),dirpath(15).name(1:end-4));
%,dirpath(16).name(1:end-4));
%dirpath(1).name(1:end-4),dirpath(2).name(1:end-4),dirpath(3).name(1:end-4),dirpath(4).name(1:end-4),dirpath(5).name(1:end-4),dirpath(6).name(1:end-4),dirpath(7).name(1:end-4),dirpath(8).name(1:end-4));

% dirpath(17).name(1:end-4)...
% );

grid
save pr AUC;
