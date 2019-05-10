#!/usr/bin/env bash

#输出特效格式控制
#${C_RESET}  关闭所有属性
#\033[1m   设置高亮度
#\03[4m   下划线
#\033[5m   闪烁
#\033[7m   反显
#\033[8m   消隐
#\033[30m   --   \033[37m   设置前景色
#\033[40m   --   \033[47m   设置背景色

#光标位置等的格式控制
#\033[nA  光标上移n行
#\03[nB   光标下移n行
#\033[nC   光标右移n行
#\033[nD   光标左移n行
#\033[y;xH设置光标位置
#\033[2J   清屏
#\033[K   清除从光标到行尾的内容
#\033[s   保存光标位置
#\033[u   恢复光标位置
#\033[?25l   隐藏光标
#\33[?25h   显示光标

#整理：
#    编码 颜色/动作
#　　0   重新设置属性到缺省设置
#　　1   设置粗体
#　　2   设置一半亮度(模拟彩色显示器的颜色)
#　　4   设置下划线(模拟彩色显示器的颜色)
#　　5   设置闪烁
#　　7   设置反向图象
#　　22 设置一般密度
#　　24 关闭下划线
#　　25 关闭闪烁
#　　27 关闭反向图象
#　　30 设置黑色前景
#　　31 设置红色前景
#　　32 设置绿色前景
#　　33 设置棕色前景
#　　34 设置蓝色前景
#　　35 设置紫色前景
#　　36 设置青色前景
#　　37 设置白色前景
#　　38 在缺省的前景颜色上设置下划线
#　　39 在缺省的前景颜色上关闭下划线
#　　40 设置黑色背景
#　　41 设置红色背景
#　　42 设置绿色背景
#　　43 设置棕色背景
#　　44 设置蓝色背景
#　　45 设置紫色背景
#　　46 设置青色背景
#　　47 设置白色背景
#　　49 设置缺省黑色背景
#特效可以叠加，需要使用“;”隔开，例如：闪烁+下划线+白底色+黑字为   \033[5;4;47;30m闪烁+下划线+白底色+黑字为${C_RESET}

C_RESET="$(tput sgr0)"
C_BLACK="\033[1;30m"
C_RED="\033[1;31m"
C_GREEN="\033[1;32m"
C_YELLOW="\033[1;33m"
C_BLUE="\033[1;34m"
C_PURPLE="\033[1;35m"
C_CYAN="\033[1;36m"
C_WHITE="\033[1;37m"
# 示例：
echo -e "${C_BLACK} 黑色字 ${C_RESET}"
echo -e "${C_RED} 红色字 ${C_RESET}"
echo -e "${C_GREEN} 绿色字 ${C_RESET}"
echo -e "${C_YELLOW} 黄色字 ${C_RESET}"
echo -e "${C_BLUE} 蓝色字 ${C_RESET}"
echo -e "${C_PURPLE} 紫色字 ${C_RESET}"
echo -e "${C_CYAN} 天蓝字 ${C_RESET}"
echo -e "${C_WHITE} 白色字 ${C_RESET}"
# 字背景颜色范围：40-47
echo -e "\033[40;37m 黑底白字 ${C_RESET}"
echo -e "\033[41;30m 红底黑字 ${C_RESET}"
echo -e "\033[42;34m 绿底蓝字 ${C_RESET}"
echo -e "\033[43;34m 黄底蓝字 ${C_RESET}"
echo -e "\033[44;30m 蓝底黑字 ${C_RESET}"
echo -e "\033[45;30m 紫底黑字 ${C_RESET}"
echo -e "\033[46;30m 天蓝底黑字 ${C_RESET}"
echo -e "\033[47;34m 白底蓝字 ${C_RESET}"

#控制选项说明
#${C_RESET} 关闭所有属性
#\033[1m 设置高亮度
#\033[4m 下划线
echo -e "\033[4;31m 下划线红字 ${C_RESET}"
#闪烁
echo -e "\033[5;34m 红字在闪烁 ${C_RESET}"
#反影
echo -e "\033[8m 消隐 ${C_RESET} "

#\033[30m-\033[37m 设置前景色
#\033[40m-\033[47m 设置背景色
#\033[nA光标上移n行
#\033[nB光标下移n行
echo -e "\033[4A 光标上移4行 ${C_RESET}"
#\033[nC光标右移n行
#\033[nD光标左移n行
#\033[y;xH设置光标位置
#\033[2J清屏
#\033[K清除从光标到行尾的内容
echo -e "\033[K 清除光标到行尾的内容 ${C_RESET}"
#\033[s 保存光标位置
#\033[u 恢复光标位置
#\033[?25| 隐藏光标
#\033[?25h 显示光标
echo -e "\033[?25l 隐藏光标 ${C_RESET}"
echo -e "\033[?25h 显示光标 ${C_RESET}"
