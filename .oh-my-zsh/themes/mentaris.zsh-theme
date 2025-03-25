#!/usr/bin/env zsh 

# THIS THEME USES DEFAULT TERMINAL COLORS AND ASUMES YOU'VE GOT EVERFOREST SET AS YOUR TTY THEME. IT WON'T LOOK AS INTENDED OTHERWISE

setopt promptsubst
autoload -U add-zsh-hook

ESP_COL=$fg[white] # Color for user/machine wrapper characters
USR_COL=$fg[cyan] # Username color
MCH_COL=$fg[cyan] # Machine color

DIR_COL=$fg[blue] # Current directory color
TAA_COL=$fg[white] # Tailing arrow color

GIT_DIRTY_COLOR=$fg[red]
GIT_CLEAN_COLOR=$fg[green]
GIT_PROMPT_INFO=$fg[green]

a="%{$reset_color%}"

PROMPT='%{$ESP_COL%}[$a%{$USR_COL%}%n$a %{$ESP_COL%}@$a %{$MCH_COL%}%m$a%{$ESP_COL%}]$a%{$DIR_COL%}%c%{$GIT_PROMPT_INFO%}$(git_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status)%{$TAA_COL%} >>$a '

RPROMPT='%{$fg[magenta]%}%*$a'

ZSH_THEME_GIT_PROMPT_PREFIX=": "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%} :"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$GIT_CLEAN_COLOR%}✔"

GIT_PROMPT_COLOR=$fg[blue]
ZSH_THEME_GIT_PROMPT_ADDED="%{$GIT_PROMPT_COLOR%}ADD$a"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$GIT_PROMPT_COLOR%}MOD$a"
ZSH_THEME_GIT_PROMPT_DELETED="%{$GIT_PROMPT_COLOR%}DEL$a"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$GIT_PROMPT_COLOR%}REN$a"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$GIT_PROMPT_COLOR%}UNM$a"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$GIT_PROMPT_COLOR%}UNT$a"
