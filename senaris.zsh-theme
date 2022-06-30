#!/usr/bin/env zsh 
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt promptsubst

autoload -U add-zsh-hook
USER_NAME_COLOR=$FG[166]
AT_COLOR=$FG[220]
MACHINE_NAME_COLOR=$FG[075]
PROMPT_SUCCESS_COLOR=$FG[153]
PROMPT_FAILURE_COLOR=$FG[124]
PROMPT_VCS_INFO_COLOR=$FG[242]
PROMPT_PROMPT=$FG[166]
GIT_DIRTY_COLOR=$FG[124]
GIT_CLEAN_COLOR=$FG[148]
GIT_PROMPT_INFO=$FG[148]

a="%{$reset_color%}"

PROMPT='%{$FG[220]%}[$a%{$USER_NAME_COLOR%}%n$a %{$AT_COLOR%}@$a %{$MACHINE_NAME_COLOR%}%m$a%{$FG[220]%}]$a%{$PROMPT_SUCCESS_COLOR%}%c%{$GIT_PROMPT_INFO%}$(git_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status)%{$PROMPT_PROMPT%} ᐅ$a '

RPROMPT='%{$FG[172]%}%*$a %{$FG[039]%}[%~]$a'

ZSH_THEME_GIT_PROMPT_PREFIX=": "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%} :"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$GIT_CLEAN_COLOR%}✔"

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[103]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[103]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[103]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[103]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[103]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[103]%}✭%{$reset_color%}"

############

#PROMPT='%{${fg_bold[yellow]}%}%n%{$reset_color%}%{${fg[yellow]}%}@%m%{$reset_color%} $(git_prompt_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}%#%{$reset_color%} '
#RPROMPT='%{$fg[green]%}%~%{$reset_color%}'

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}("
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[red]%}✗%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
