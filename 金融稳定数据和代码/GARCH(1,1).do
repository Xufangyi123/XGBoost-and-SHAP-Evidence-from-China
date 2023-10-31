**导入Excel-X2
clear
import excel "C:\Users\ganziqi\Desktop\论文资料\数据\整理后X1~X20\X2 三个月shibor的实际波动率.xlsx", sheet("Sheet1") firstrow
**数据处理
*将第一行文字添加变量标签
foreach x of varlist *{
local vlabel = `x'[1]
label variable `x'"`vlabel'"
}
drop in 1/1
*分割字符
split date,parse(/)
*连接字符
gen time =date3+"-"+date1+"-"+date2
*修改成日期格式
gen time1 = date(time,"YMD")
format time1 %td 
drop time date*
rename time1 date
order date x2 
destring x2,replace
*差分之后得到平稳序列
gen X2=ln(x2)-ln(x2[_n-1])
**删除缺失值
drop if x2==.
*画图
graph twoway line x2 date
graph twoway line X2 date
*数据预处理
*设置时间序列数据
tsset date
*平稳性检验
dfuller x2
dfuller X2
*生成波动率序列
arch X2,arch(1) garch(1)
predict sigma,variance
*画图，波动率与时间
graph twoway line sigma date




**导入Excel-X6
clear
import excel "C:\Users\ganziqi\Desktop\论文资料\数据\整理后X1~X20\X6 上证国债指数（000012）实际波动率.xlsx", sheet("Sheet1") firstrow
**数据处理
*将第一行文字添加变量标签
foreach x of varlist *{
local vlabel = `x'[1]
label variable `x'"`vlabel'"
}
drop in 1/1
*分割字符
split date,parse(/)
*连接字符
gen time =date3+"-"+date1+"-"+date2
*修改成日期格式
gen time1 = date(time,"YMD")
format time1 %td 
drop time date*
rename time1 date
order date x6 
destring x6,replace
**删除缺失值
drop if x6==.
*数据预处理
*设置时间序列数据
tsset date
*平稳性检验
dfuller x6
*画图
graph twoway line x6 date
*取对数收益率
gen X6=ln(x6/x6[_n-1])
dfuller X6
*画图
graph twoway line X6 date
*截取2008.10.6之后的数据
drop in 1/935
*生成波动率序列
arch X6,arch(1) garch(1) distribution(gaussian)
est store GARCH11_gaussian
predict sigma,variance
*画图，波动率与时间
graph twoway line sigma date



**导入Excel-X7
clear
import excel "C:\Users\ganziqi\Desktop\论文资料\数据\整理后X1~X20\X7 上证工业指数（000004）实际波动率.xlsx", sheet("Sheet1") firstrow
**数据处理
*将第一行文字添加变量标签
foreach x of varlist *{
local vlabel = `x'[1]
label variable `x'"`vlabel'"
}
drop in 1/1
**删除缺失值
destring x7,replace
drop if x7==.
*分割字符
split date,parse(/)
*连接字符
gen time =date3+"-"+date1+"-"+date2
*修改成日期格式
gen time1 = date(time,"YMD")
format time1 %td 
drop time date*
rename time1 date
order date x7 
*数据预处理
*设置时间序列数据
tsset date
*画图
graph twoway line x7 date
*检验平稳性
dfuller x7
gen X7=ln(x7/x7[_n-1])
dfuller X7
*删减数据从2006.10.8开始
drop in 1/1183
*画图
graph twoway line X7 date
*生成波动率序列
arch X7,arch(1) garch(1)
predict sigma,variance
*画图，波动率与时间
graph twoway line sigma date



**导入Excel-X8
clear
import excel "C:\Users\ganziqi\Desktop\论文资料\数据\整理后X1~X20\X8 上证商业指数（000005）实际波动率.xlsx", sheet("Sheet1") firstrow
**数据处理
*将第一行文字添加变量标签
foreach x of varlist *{
local vlabel = `x'[1]
label variable `x'"`vlabel'"
}
drop in 1/1
**删除缺失值
destring x8,replace
drop if x8==.
*分割字符
split date,parse(/)
*连接字符
gen time =date3+"-"+date1+"-"+date2
*修改成日期格式
gen time1 = date(time,"YMD")
format time1 %td 
drop time date*
rename time1 date
order date x8 
*数据预处理
*设置时间序列数据
tsset date
*检验平稳性
graph twoway line x8 date
dfuller x8
gen X8=ln(x8/x8[_n-1])
graph twoway line X8 date
dfuller X8
*删减数据符合时间跨度
drop in 1/1183
*生成波动率序列
arch X8,arch(1) garch(1)
predict sigma,variance
*画图，波动率与时间
graph twoway line sigma date




**导入Excel-X13
clear
import excel "C:\Users\ganziqi\Desktop\论文资料\数据\整理后X1~X20\X13 180金融指数（000018）实际波动率.xlsx", sheet("Sheet1") firstrow
**数据处理
*将第一行文字添加变量标签
foreach x of varlist *{
local vlabel = `x'[1]
label variable `x'"`vlabel'"
}
drop in 1/1
**删除缺失值
destring x13,replace
drop if x13==.
*分割字符
split date,parse(/)
*连接字符
gen time =date3+"-"+date1+"-"+date2
*修改成日期格式
gen time1 = date(time,"YMD")
format time1 %td 
drop time date*
rename time1 date
order date x13 
*数据预处理
*设置时间序列数据
tsset date
*检验平稳性
graph twoway line x13 date
dfuller x13
gen X13=ln(x13/x13[_n-1])
graph twoway line X13 date
dfuller X13
*删减数据符合时间跨度
drop in 1/690
*生成波动率序列
arch X13,arch(1) garch(1)
predict sigma,variance
*画图，波动率与时间
graph twoway line sigma date




**导入Excel-X16
clear
import excel "C:\Users\ganziqi\Desktop\论文资料\数据\整理后X1~X20\X16 地产指数（000006）实际波动率.xlsx", sheet("Sheet1") firstrow
**数据处理
*将第一行文字添加变量标签
foreach x of varlist *{
local vlabel = `x'[1]
label variable `x'"`vlabel'"
}
drop in 1/1
**删除缺失值
destring x16,replace
drop if x16==.
*分割字符
split date,parse(/)
*连接字符
gen time =date3+"-"+date1+"-"+date2
*修改成日期格式
gen time1 = date(time,"YMD")
format time1 %td 
drop time date*
rename time1 date
order date x16 
*数据预处理
*设置时间序列数据
tsset date
*检验平稳性
graph twoway line x16 date
dfuller x16
gen X16=ln(x16/x16[_n-1])
graph twoway line X16 date
dfuller X16
*删减数据符合时间跨度
drop in 1/1183
*生成波动率序列
arch X16,arch(1) garch(1)
predict sigma,variance
*画图，波动率与时间
graph twoway line sigma date




**导入Excel-X19
clear
import excel "C:\Users\ganziqi\Desktop\论文资料\数据\整理后X1~X20\X19 美元兑人民币汇率波动率.xlsx", sheet("Sheet1") firstrow
**数据处理
*将第一行文字添加变量标签
foreach x of varlist *{
local vlabel = `x'[1]
label variable `x'"`vlabel'"
}
drop in 1/1
**删除缺失值
destring x19,replace
drop if x19==.
*分割字符
split date,parse(/)
*连接字符
gen time =date3+"-"+date1+"-"+date2
*修改成日期格式
gen time1 = date(time,"YMD")
format time1 %td 
drop time date*
rename time1 date
order date x19 
*数据预处理
*设置时间序列数据
tsset date
*检验平稳性
graph twoway line x19 date
dfuller x19
gen X19=ln(x19/x19[_n-1])
graph twoway line X19 date
dfuller X19
*删减数据符合时间跨度
// drop in 1/1183
*生成波动率序列
arch X19,arch(1) garch(1)
predict sigma1,variance
*画图，波动率与时间
graph twoway line sigma1 date


**导入Excel-X20
clear
import excel "C:\Users\ganziqi\Desktop\论文资料\数据\整理后X1~X20\X20 NDF波动率.xlsx", sheet("Sheet1") firstrow
**数据处理
*将第一行文字添加变量标签
foreach x of varlist *{
local vlabel = `x'[1]
label variable `x'"`vlabel'"
}
drop in 1/1
**删除缺失值
destring x20,replace
drop if x20==.
*分割字符
split date,parse(/)
*连接字符
gen time =date3+"-"+date1+"-"+date2
*修改成日期格式
gen time1 = date(time,"YMD")
format time1 %td 
drop time date*
rename time1 date
order date x20 
*数据预处理
*设置时间序列数据
tsset date
*检验平稳性
graph twoway line x20 date
dfuller x20
gen X20=ln(x20/x20[_n-1])
graph twoway line X20 date
dfuller X20
*删减数据符合时间跨度
drop in 1/128
*生成波动率序列
arch X20,arch(1) garch(1)
predict sigma1,variance
*画图，波动率与时间
graph twoway line sigma1 date




