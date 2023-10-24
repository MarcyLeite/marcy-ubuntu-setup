function my_git_prompt() {
  tester=$(git rev-parse --git-dir 2> /dev/null) || return

  INDEX=$(git status --porcelain 2> /dev/null)
  STATUS=""

  # is branch ahead?
  if $(echo "$(git log origin/$(git_current_branch)..HEAD 2> /dev/null)" | grep '^commit' &> /dev/null); then
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_AHEAD"
  fi

  # is branch behind?
  if $(echo "$(git log HEAD..origin/$(git_current_branch) 2> /dev/null)" | grep '^commit' &> /dev/null); then
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_BEHIND"
  fi

  # is anything staged?
  if $(echo "$INDEX" | command grep -E -e '^(D[ M]|[MARC][ MD]) ' &> /dev/null); then
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_STAGED"
  fi

  # is anything unstaged?
  if $(echo "$INDEX" | command grep -E -e '^[ MARC][MD] ' &> /dev/null); then
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_UNSTAGED"
  fi

  # is anything untracked?
  if $(echo "$INDEX" | grep '^?? ' &> /dev/null); then
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_UNTRACKED"
  fi

  # is anything unmerged?
  if $(echo "$INDEX" | command grep -E -e '^(A[AU]|D[DU]|U[ADU]) ' &> /dev/null); then
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_UNMERGED"
  fi

  if [[ -n $STATUS ]]; then
    STATUS=" $STATUS"
  fi

  echo "${ZSH_THEME_GIT_PROMPT_PREFIX}$(my_current_branch)${STATUS}${ZSH_THEME_GIT_PROMPT_SUFFIX}"
  #echo "1234987123948174912374891723904"
}

function my_current_branch() {
  echo $(git_current_branch || echo "(no branch)")
}


#PROMPT='%F{green}%2c%F{blue} [%f '
#RPROMPT='$(git_prompt_info) %F{blue}] %F{green}%D{%L:%M} %F{yellow}%D{%p}%f'

PROMPT='%F{blue}%@%F{green} %2~%f 🌷 '
RPROMPT='$(my_git_prompt) %F{magenta}%n%F{white}'

#ZSH_THEME_PROMPT_RETURNCODE_PREFIX="%{$fg_bold[red]%}"
#ZSH_THEME_GIT_PROMPT_PREFIX=" $fg[white]‹ %{$fg_bold[yellow]%}"
#ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[magenta]%}↑"
#ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[green]%}↓"
#ZSH_THEME_GIT_PROMPT_STAGED="%{$fg_bold[green]%}●"
#ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg_bold[red]%}●"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[white]%}●"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[red]%}✕"
#ZSH_THEME_GIT_PROMPT_SUFFIX=" $fg_bold[white]›%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{white}‹ %F{yellow}%B"
ZSH_THEME_GIT_PROMPT_AHEAD="%F{magenta}%B↑"
ZSH_THEME_GIT_PROMPT_BEHIND="%F{green}%B↓"
ZSH_THEME_GIT_PROMPT_STAGED="%F{green}%B●"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%F{red}%B●"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{white}%B●"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{red}%B✕"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %F{white}%b›"
