orange=$(tput setaf 166);
yellow=$(tput setaf 228);
green=$(tput setaf 71);
white=$(tput setaf 15);
cyan=$(tput setaf 6);
reset=$(tput sgr0);

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\n";
PS1+="\[${orange}\]\u";
PS1+="\[${white}\] at ";
PS1+="\[${yellow}\]\h";
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\w";
PS1+="\[${cyan}\]\$(parse_git_branch)";
PS1+="\n";
PS1+="\[${white}\$ \[${reset}\]";
export PS1;
