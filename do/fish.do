*************************************************************
* name: exam 2
* author: Weiyi Li
* description: IV and OLS of fish data
* date: may 24, 2020
*************************************************************




use "/Users/weiyi/Desktop/BU/summer 2020/exam2/data/fish.dta"
gen lgq = log(quantity)

gen lgp = log(price)

regress lgq lgp mon tues wed thurs
outreg2 using "/Users/weiyi/Desktop/BU/summer 2020/exam2/table/fish_table.doc", word append

ivregress 2sls lgq mon tues wed thurs (lgp = wave2)
outreg2 using "/Users/weiyi/Desktop/BU/summer 2020/exam2/table/fish_table.doc", word append

ivregress 2sls lgq mon tues wed thurs (lgp = speed3)
outreg2 using "/Users/weiyi/Desktop/BU/summer 2020/exam2/table/fish_table.doc", word append




