#!/bin/bash
# 生成带目录，需要四个命令
#->->->->->->->->->->->->->->->->->->->->->->
xelatex -synctex=1 cumtBachelorThesisTemplate.tex 
bibtex cumtBachelorThesisTemplate.aux
sed -i 's/Massachusetts, MIT/Massachusetts: MIT/g' cumtBachelorThesisTemplate.bbl
sed -i 's/北京, 国/北京: 国/g' cumtBachelorThesisTemplate.bbl
# 开始处理该死的文献标识符
sed -i 's/\\emph.*\(图像局部不变性特征与描述\).*\./\1[M]./g' cumtBachelorThesisTemplate.bbl
sed -i 's/\\emph.\(Introduction to algorithms\).\./\1[M]./g' cumtBachelorThesisTemplate.bbl
# end of 该死的文献标识符
xelatex -synctex=1 cumtBachelorThesisTemplate.tex
xelatex -synctex=1 cumtBachelorThesisTemplate.tex
#<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-
