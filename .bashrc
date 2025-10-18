#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export JAVA_HOME=/opt/jdk-17.0.12
export PATH=$JAVA_HOME/bin:$PATH


export CLASSPATH=.:$HOME/Luminar/Software/MySQL/mysql-connector-j-8.0.33/mysql-connector-j-8.0.33.jar

