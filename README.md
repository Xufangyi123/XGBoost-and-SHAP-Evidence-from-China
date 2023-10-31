# XGBoost and SHAP: Evidence from China
Benyan Tan, Ziqi Gan, Yan Wu  
The measurement and early warning of daily financial stability index based on XGBoost and SHAP: Evidence from China [Address of the paper](https://www.sciencedirect.com/science/article/pii/S0957417423008771)   

## Our novel contributions are:
The main contributions of the paper are as follows. First, existing research has the problem of oversimplification, some studies exclusively regard banking risk as financial risk, but ignore the impact of nonfinancial institutions. To avoid one-sidedness in the meaning of financial stability, this study takes a comprehensive set of variables from the money market, stock market, bond market and foreign exchange market into account. To a certain extent, this is combined with the actual situation of China’s financial system, which may have some guiding significance for future research on financial stability. Second, there is a certain limitation that the low frequency data such as monthly, quarterly and annual research data cannot reflect the status of financial stability timely. This paper uses daily high-frequency data, which can identify the 
status of financial stability and possible financial risks in a more timely manner. Third, machine learning methods are often used as “black boxes”. Neither the causal relationship between input features and output labels nor the importance of input features to prediction results can be obtained. This study proposes an interpretable framework including SHAP value mapping plots, PDP, SHAP force plots and LIME to give a global and local interpretation of the early warning model. Moreover, the benefits and apparent advantages of interpretable framework in machine learning technology are highlighted in the study.

## Introduction

## Method

## figure 

![Fig. 1. Visual representation of empirical strategy](https://github.com/Xufangyi123/12/blob/main/%E9%87%91%E8%9E%8D%E7%A8%B3%E5%AE%9A%E6%95%B0%E6%8D%AE%E5%92%8C%E4%BB%A3%E7%A0%81/1-s2.0-S0957417423008771-gr1.jpg?raw=true)  
![Fig. 2. Trend of ICFS and warning range](https://github.com/Xufangyi123/12/blob/main/%E9%87%91%E8%9E%8D%E7%A8%B3%E5%AE%9A%E6%95%B0%E6%8D%AE%E5%92%8C%E4%BB%A3%E7%A0%81/1-s2.0-S0957417423008771-gr2.jpg?raw=true)  
![Fig. 3. Probabilistic diagram of the Markov regime switching model](https://github.com/Xufangyi123/12/blob/main/%E9%87%91%E8%9E%8D%E7%A8%B3%E5%AE%9A%E6%95%B0%E6%8D%AE%E5%92%8C%E4%BB%A3%E7%A0%81/1-s2.0-S0957417423008771-gr3.jpg?raw=true)  
![Fig. 4. The confusion matrix of XGBoost](https://github.com/Xufangyi123/12/blob/main/%E9%87%91%E8%9E%8D%E7%A8%B3%E5%AE%9A%E6%95%B0%E6%8D%AE%E5%92%8C%E4%BB%A3%E7%A0%81/1-s2.0-S0957417423008771-gr4.jpg?raw=true)
![Fig. 5. A SHAP summary plot of the high risk status](https://github.com/Xufangyi123/12/blob/main/%E9%87%91%E8%9E%8D%E7%A8%B3%E5%AE%9A%E6%95%B0%E6%8D%AE%E5%92%8C%E4%BB%A3%E7%A0%81/1-s2.0-S0957417423008771-gr5.jpg?raw=true)
![Fig. 6. SHAP value mapping plots for the top 8 important features based on the XGBoost model](https://github.com/Xufangyi123/12/blob/main/%E9%87%91%E8%9E%8D%E7%A8%B3%E5%AE%9A%E6%95%B0%E6%8D%AE%E5%92%8C%E4%BB%A3%E7%A0%81/1-s2.0-S0957417423008771-gr6.jpg?raw=true)
![Fig. 7. SHAP force plots of one single sample (low, medium and high risk are shown from top to bottom)](https://github.com/Xufangyi123/12/blob/main/%E9%87%91%E8%9E%8D%E7%A8%B3%E5%AE%9A%E6%95%B0%E6%8D%AE%E5%92%8C%E4%BB%A3%E7%A0%81/1-s2.0-S0957417423008771-gr7.jpg?raw=true)
![Fig. 8. Partial dependency plots of the first 8 important features based on the XGBoost model](https://github.com/Xufangyi123/12/blob/main/%E9%87%91%E8%9E%8D%E7%A8%B3%E5%AE%9A%E6%95%B0%E6%8D%AE%E5%92%8C%E4%BB%A3%E7%A0%81/1-s2.0-S0957417423008771-gr8.jpg?raw=true)
![Fig. 9. Prediction probability plots based on single sample by LIME](https://github.com/Xufangyi123/12/blob/main/%E9%87%91%E8%9E%8D%E7%A8%B3%E5%AE%9A%E6%95%B0%E6%8D%AE%E5%92%8C%E4%BB%A3%E7%A0%81/1-s2.0-S0957417423008771-gr9.jpg?raw=true)


## cite
Benyan Tan, Ziqi Gan, Yan Wu,  
The measurement and early warning of daily financial stability index based on XGBoost and SHAP: Evidence from China,  
Expert Systems with Applications,  
Volume 227, 2023, 120375,  
ISSN 0957-4174,  
https://doi.org/10.1016/j.eswa.2023.120375.  
(https://www.sciencedirect.com/science/article/pii/S0957417423008771)  
Abstract: Financial stability plays an important role in the economic and social development of any economy. This study selects daily frequency data of 20 indicators from the money market, stock market, bond market and foreign exchange market in China as research foundation. Firstly, construct the Index of China’s Financial Stability (ICFS) by Dynamic Weighting Method based on the time-varying correlation coefficient, and divide ICFS into three categorical variables (high medium low) by Markov Regime Switching Model, results demonstrate that high risk regime can fully explain the financial risk events occurred in the same period in the history. Secondly, the basic indicators and the categorical variables are put into XGBoost model, it turns out that XGBoost model outperforms other machine learning models in the early warning of financial risk on the performance of various evaluation metrics. Moreover, this study proposed an interpretable framework to give a global and local interpretation of early warning model. It turns out that the risk factors influencing China’s financial stability are mainly from real economy, financial institutions, market expectations and real estate market, and we identified the 8 most important features and their early warning values. The results provide significant information to policymakers, market regulators and investors, about employing the early warning values as a useful tool to improve resilience to financial risk.  
Keywords: Financial stability; Daily frequency index; Machine learning; Early warning model; Interpretable framework  

