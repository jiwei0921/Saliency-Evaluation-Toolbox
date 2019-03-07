%%
function result = candidateAlgStructure( alg )
% Function creates the struct needed to evaluate algorithm
% Input:
% name - name of algorithm
% dir - directory of algorithm output
% prefix - prefix of saliency files - can be empty. (e.g. saliency_);
% postfix - postif of saliency files - can be empty. (e.g. _saleincy);
% ext - extension of saliency files (e.g. jpg,png)

len = length( alg );
result5 = cell( len, 1 );
for j = 1:len    
    tem = alg{j};
    result5{j} = struct( 'name', tem(1), 'dir', tem(2), 'prefix', tem(3), ...
        'postfix', tem(4), 'ext', tem(5) );    
end
result = result5;