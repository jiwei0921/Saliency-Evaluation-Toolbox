%% PR
clc;clear;close all;

% set the ground truth path
gt_dir = { 'LFSD', './Dataset/LFSD/GT/',[],[] 'png'};

% set the save path
basedir = './PR_results/';
%%
%mkdir(basedir);

% mkdir(basedir);
alg_dir = ...                                           
{  
% set the saliency map path as well as name.
 {'your_name', './Dataset/LFSD/sal_map', [],'', 'png'};  %1. RGBD results\MPCI
% {'Ours', '/home/wlz/Downloads/caffe-future/models/finetune1/Experiments/ECSSD/map_Refcn-filter/', [],'' 'jpg'};
};

alg_dir_FF = candidateAlgStructure( alg_dir );  
dataset = datasetStructure( gt_dir(1), gt_dir(2) );

[ mPre, mRecall, mFmeasure, mHitRate , mFalseAlarm, AUC ] = ...
    performCalcu(dataset,alg_dir_FF); 


save( [ basedir 'your_name'], 'mPre', 'mRecall', 'mFmeasure', 'mHitRate', 'mFalseAlarm', 'AUC' );

curve_bar_plot( basedir, gt_dir, alg_dir, mPre, mRecall, mFmeasure, AUC );

