# Machine Learning: Recreating CrossAug: A Contrastive Data Augmentation Method for Debiasing Fact Verification Models
## Disclaimer:

![](https://img.shields.io/badge/DISCLAIMER-Data-red)

```javascript
This work is inspired by the following previous work sources:
https://github.com/minwhoo/CrossAug

author: Minwoo Lee

citation: Minwoo Lee, Seungwon Do, and Sung Ju Hwang. 2020. CrossAug: Cross-lingual Data Augmentation for Low-resource Neural Machine Translation. In Proceedings of the 58th Annual Meeting of the Association for Computational Linguistics (ACL 2020). Association for Computational Linguistics, Online, July 5-10, 2020, pages 1-11. https://www.aclweb.org/anthology/2020.acl-main.1
```

```javascript
This is a work in progress. I will be adding more techniques as I learn them. If you have any suggestions, please feel free to reach out to me.
```

<a href="./Research/">![](https://img.shields.io/badge/Written-Report-Yellow)
</a>    
The project aims to predict the credibility of a tweet based on the hashtags used in the tweet. The project is divided into two parts:


## Setup
---
<a href="./Resources/">![](https://img.shields.io/badge/Setup-Used-blue)
</a>    

Install dependencies

Our code is based on Python 3.7, and experiments are run on a single GPU.
  
  ```
  pip install -r requirements.txt
  ```

## Data Download
---
### Download the data

![](https://img.shields.io/badge/Download-Data-blue)

[Here](http://milabfile.snu.ac.kr:15000/sharing/zdhCfoLzP)


## Data Augmentation Tool From CrossAug
---
<a href="https://github.com/minwhoo/CrossAug/blob/master/run_crossaug.py">![](https://img.shields.io/badge/Interactive-Notebook-red)

</a>


```python
python run_crossaug.py \
  --in_file fever_data/fever.train.jsonl \
  --out_file fever_data/fever+crossaug.train.jsonl
```


## Interactive Notebooks
<a href="./Project/Fact_Check_Replication.ipynb">![](https://img.shields.io/badge/Interactive-Notebook-red)
</a>    
```
  1. Data Collection
  2. Data Analysis
  3. Data Augmentation
  4. Data Preprocessing
  5. Model Training
  6. Model Evaluation
  7. Model Deployment
```

## References
---

<a href="./Sources%20Cited/">![](https://img.shields.io/badge/Sources-Cited-Orange)
</a>    

```
  Kang, Yoon-ji. "Research on Frames and Network Agenda Setting Regarding Creating Shared Value in News Articles and Blogs: Focusing on Topic Modeling and Semantic Network Analysis." korean management review, vol. 51, no. 5, Oct. 2022, pp. 1165–220, https://doi.org/10.17287/kmr.2022.51.5.1165.

    Kotonya, Neema, and Francesca Toni. "Explainable Automated Fact-Checking for Public Health Claims." Proceedings of the 2020 Conference on Empirical Methods in Natural Language Processing (EMNLP), Association for Computational Linguistics, 2020, https://doi.org/10.18653/v1/2020.emnlp-main.623.

    Lee, Minwoo, et al. "CrossAug." CIKM '21: The 30th ACM International Conference on Information and Knowledge Management, ACM, 2021, https://doi.org/10.1145/3459637.3482078.

   Nguyen, Thanh Tam, et al. "User guidance for efficient fact checking." Proceedings of the VLDB Endowment, vol. 12, no. 8, Apr. 2019, pp. 850–63, https://doi.org/10.14778/3324301.3324303.


```

## License

[MIT](https://choosealicense.com/licenses/mit/)

## Author
Murtadha Marzouq

