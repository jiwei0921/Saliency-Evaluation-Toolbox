%% PR
clc;clear;close all;

gt_dir = { 'ECSSD', '/home/tuesday/Datasets/LF/image.focal.gt.ori/gt',[],[] 'jpg'};


basedir = '/home/tuesday/PycharmProjects/MyWork-BS1/PR/';
%%
mkdir(basedir);

% mkdir(basedir);
map_path='/home/tuesday/PycharmProjects/MyWork-BS1/salmap_output1/';
in_dir = dir(map_path);
for i=6:length(in_dir)-2
    i
    mapname=in_dir(i+2).name;
    map_name=[map_path mapname];
    alg_dir = ...                                           
    {  
     {'24000', map_name, [],'', 'png'};
    };

    alg_dir_FF = candidateAlgStructure( alg_dir );  
    dataset = datasetStructure( gt_dir(1), gt_dir(2) );

    [ mPre, mRecall, mFmeasure, mHitRate , mFalseAlarm, AUC ] = ...
        performCalcu(dataset,alg_dir_FF); 


    save( [ basedir mapname], 'mPre', 'mRecall', 'mFmeasure', 'mHitRate', 'mFalseAlarm', 'AUC' );

    curve_bar_plot( basedir, gt_dir, alg_dir, mPre, mRecall, mFmeasure, AUC );
end

