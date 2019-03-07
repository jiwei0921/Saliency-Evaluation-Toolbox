%%
function curve_bar_plot( basedir, gt_dir, alg_dir, mPre, mRecall, mFmeasure, AUC )

switch gt_dir{1} %输入真值库的名字
    case 'MSRA'
        len = length(alg_dir);
        method2 = cell(len,1);
        for j = 1:len
            method2(j)=alg_dir{j}(1);
        end
        method_col = { 'r', 'g', 'b', 'm', 'c', '--m', '--g', 'k', 'c--', 'b--' };
        
        figure(4);
        hold on;
        for j=1:len
            plot(mRecall(:,j),mPre(:,j),method_col{j});
        end
        grid on;
        hold off;
        xlabel('Recall');     ylabel('Precision');
        legend( method2 );
        saveas( figure(4), [basedir, 'msra_pr.fig']);
        
        figure(5);
        barMsra = [mFmeasure' AUC'];
        bar( barMsra );
        set( gca, 'xtick', 1:1:len ),
        grid on;
        set( gca ,'xticklabels',  method2 , 'fontsize', 8 );
        legend('Precision','Recall','Fmeasure','AUC');
        saveas( figure(5), [ basedir, 'msra_bar.fig'] );
        
        
    case 'SED1'
        len = length(alg_dir); %输入的候选算法的个数
        method2 = cell(len,1); %生成相应个空矩阵 里面存放输入算法的名字；
        for j = 1:len
            method2(j)=alg_dir{j}(1);
        end
        method_col = { 'r', 'g', 'b', 'm', 'c', '--m', '--g', 'k', 'c--', 'b--' }; %可以画十种方法的颜色
        
        figure(4);
        hold on;
        for j=1:len
            plot(mRecall(:,j),mPre(:,j),method_col{j});%每个候选算法 用响应的颜色画出
        end
        grid on;
        hold off;
        xlabel('Recall');     ylabel('Precision');
        legend( method2 );
        saveas( figure(4), [ basedir,'SED1_pr.fig' ]);
        
        figure(5);
        barMsra = [mFmeasure' AUC'];
        bar( barMsra );
        set( gca, 'xtick', 1:1:len ),
        grid on;
        set( gca ,'xticklabels',  method2 , 'fontsize', 8 );
        legend('Precision','Recall','Fmeasure','AUC');
        saveas(  figure(5), [basedir,'SED1_bar.fig']);
        
        
    case 'SED2'
        len = length(alg_dir);
        method2 = cell(len,1);
        for j = 1:len
            method2(j)=alg_dir{j}(1);
        end
        method_col = { 'r', 'g', 'b', 'm', 'c', '--m', '--g', 'k', 'c--', 'b--' };
        
        figure(4);
        hold on;
        for j=1:len
            plot(mRecall(:,j),mPre(:,j),method_col{j});
        end
        grid on;
        hold off;
        xlabel('Recall');     ylabel('Precision');
        legend( method2 );
        saveas( figure(4), [basedir, 'SED2_pr.fig']);
        
        figure(5);
        barMsra = [mFmeasure' AUC'];
        bar( barMsra );
        set( gca, 'xtick', 1:1:len ),
        grid on;
        set( gca ,'xticklabels',  method2 , 'fontsize', 8 );
        legend('Precision','Recall','Fmeasure','AUC');
        saveas(  figure(5), [basedir,'SED2_bar.fig']);
        
        
    case 'SOD'
        len = length(alg_dir);
        method2 = cell(len,1);
        for j = 1:len
            method2(j)=alg_dir{j}(1);
        end
        method_col = { 'r', 'g', 'b', 'm', 'c', '--m', '--g', 'k', 'c--', 'b--', 'r--' };
        
        figure(4);
        hold on;
        for j=1:len
            plot(mRecall(:,j),mPre(:,j),method_col{j});
        end
        grid on;
        hold off;
        xlabel('Recall');     ylabel('Precision');
        legend( method2 );
        saveas(  figure(4), [basedir, 'SOD_pr.fig']);
        
        figure(5);
        barMsra = [mFmeasure' AUC'];
        bar( barMsra );
        set( gca, 'xtick', 1:1:len ),
        grid on;
        set( gca ,'xticklabels',  method2 , 'fontsize', 8 );
        legend('Precision','Recall','Fmeasure','AUC');
        saveas(  figure(5), [basedir,'SOD_bar.fig']);
        
        
    case 'ASD'
        len = length(alg_dir);
        method2 = cell(len,1);
        for j = 1:len
            method2(j)=alg_dir{j}(1);
        end
        method_col = { 'r', 'g', 'b', 'm', 'c', '--m', '--g', 'k', 'c--', 'b--', 'r--', 'k--', 'k+' };
        
        figure(4);
        hold on;
        for j=1:len
            plot(mRecall(:,j),mPre(:,j),method_col{j});
        end
        grid on;
        hold off;
        xlabel('Recall');     ylabel('Precision');
        legend( method2 );
        saveas(  figure(4), [basedir, 'ASD_pr.fig']);
        
        figure(5);
        barMsra = [mFmeasure' AUC'];
        bar( barMsra );
        set( gca, 'xtick', 1:1:len ),
        grid on;
        set( gca ,'xticklabels',  method2 , 'fontsize', 8 );
        legend('Precision','Recall','Fmeasure','AUC');
        saveas(  figure(5), [basedir,'ASD_bar.fig']);
        
        case 'BKL'
        len = length(alg_dir);
        method2 = cell(len,1);
        for j = 1:len
            method2(j)=alg_dir{j}(1);
        end
        method_col = { 'r', 'g', 'b', 'm', 'c', '--m', '--g', 'k', 'c--', 'b--', 'r--', 'k--', 'k+' };
        
        figure(4);
        hold on;
        for j=1:len
            plot(mRecall(:,j),mPre(:,j),method_col{j});
        end
        grid on;
        hold off;
        xlabel('Recall');     ylabel('Precision');
        legend( method2 );
        saveas(  figure(4), [basedir, 'BKL_pr.fig']);
        
        figure(5);
        barMsra = [mFmeasure' AUC'];
        bar( barMsra );
        set( gca, 'xtick', 1:1:len ),
        grid on;
        set( gca ,'xticklabels',  method2 , 'fontsize', 8 );
        legend('Precision','Recall','Fmeasure','AUC');
        saveas(  figure(5), [basedir,'BKL.fig']);
        
    case 'DUT_OMRON'
        len = length(alg_dir);
        method2 = cell(len,1);
        for j = 1:len
            method2(j)=alg_dir{j}(1);
        end
        method_col = { 'r', 'g', 'b', 'm', 'c', '--m', '--g', 'k', 'c--' };
        
        figure(4);
        hold on;
        for j=1:len
            plot(mRecall(:,j),mPre(:,j),method_col{j});
        end
        grid on;
        hold off;
        xlabel('Recall');     ylabel('Precision');
        legend( method2 );
        saveas(  figure(4), [basedir, 'DUT_OMRON_pr.fig']);
        
        figure(5);
        barMsra = [mFmeasure' AUC'];
        bar( barMsra );
        set( gca, 'xtick', 1:1:len ),
        grid on;
        set( gca ,'xticklabels',  method2 , 'fontsize', 8 );
        legend('Precision','Recall','Fmeasure','AUC');
        saveas(  figure(5), [basedir,'DUT_OMRON_bar.fig']);
        
        
end
