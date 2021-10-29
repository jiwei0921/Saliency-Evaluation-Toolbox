# Saliency-Evaluation-Toolbox
This Toolbox contains near all evaluation metrics for salient object detection including:

+ E-measure   
+ S-measure   
+ weighted F-measure   
+ F-measure    
+ MAE scores    
+ PR curves or bar metrics
+ Boundary Displacement Error

You can easily use this Tool Box to evaluate SOD results.     
   
## Citation          
```
@article{Saliency-Evaluation-Toolbox,   
    Author = {Wei Ji},
    Title = {Evaluation Toolbox for Salient Object Detection.},
    Journal = {https://github.com/jiwei0921/Saliency-Evaluation-Toolbox/},
    Year = {2019}
} 
```       
                
## Requirement 
* MATLAB

## Test E/S/weighted F/F-measure and MAE scores
1. Set the path of GT and sal_map in main.m
2. run main.m

## Test PR curves 
### 1 create .m file
1. put your test_images in ./0 PR/Dataset
2. set your_path and run ./0 PR/PR_sal2mat.m
### 2 prduce PR curves or PR bar 
1. run ./0 PR/code_bar.m or code_or.m    

      
## Boundary Displacement Error Metric 
1. It contains BDE metric, which borrows from [this paper](https://arxiv.org/pdf/2108.03551.pdf).
2. Set the path of GT and sal_map in main.m
3. run main.m ([Source Code](https://pan.baidu.com/s/1HxRlvOO1DrEkzJP0mGNgJA) and fetch code is `k2v6`).
4. This code is provided by [Dr. Tang Lv](https://arxiv.org/pdf/2108.03551.pdf). Thanks very much!


## Related Citations
```
@article{sal_eval_toolbox,
    Author = {Mengyang Feng},
    Title = {Evaluation Toolbox for Salient Object Detection.},
    Journal = {https://github.com/ArcherFMY/sal_eval_toolbox},
    Year = {2018}
}
```
```
@article{borji2015salient,
	title="Salient Object Detection: A Benchmark",
	author="Ali {Borji} and Ming-Ming {Cheng} and Huaizu {Jiang} and Jia {Li}",
	journal="IEEE Transactions on Image Processing",
	volume="24",
	number="12",
	pages="5706--5722",
	year="2015"
}
```
```
@inproceedings{fan2017structure,
	title="Structure-Measure: A New Way to Evaluate Foreground Maps",
	author="Deng-Ping {Fan} and Ming-Ming {Cheng} and Yun {Liu} and Tao {Li} and Ali {Borji}",
	booktitle="2017 IEEE International Conference on Computer Vision (ICCV)",
	pages="4558--4567",
	year="2017"
}
```
```
@inproceedings{fan2018enhanced,
	title="Enhanced-alignment Measure for Binary Foreground Map Evaluation",
	author="Deng-Ping {Fan} and Cheng {Gong} and Yang {Cao} and Bo {Ren} and Ming-Ming {Cheng} and Ali {Borji}",
	booktitle="IJCAI 2018: 27th International Joint Conference on Artificial Intelligence",
	pages="698--704",
	year="2018"
}
```
```
@inproceedings{zhang2020weakly,
  title={Weakly-supervised salient object detection via scribble annotations},
  author={Zhang, Jing and Yu, Xin and Li, Aixuan and Song, Peipei and Liu, Bowen and Dai, Yuchao},
  booktitle={Proceedings of the IEEE/CVF conference on computer vision and pattern recognition},
  pages={12546--12555},
  year={2020}
}
```
