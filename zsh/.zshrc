#Initialization code that may require console input (password prompts, [y/n] confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k" plugins=( fzf-tab
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-vim-mode
  fd
  zsh-navigation-tools
  fzf
  tmux
  zsh-aliases-exa
  zsh-autopair
)

MODE_CURSOR_VIINS="#ffc0cb blinking bar"
MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS #ffc0cb"
MODE_CURSOR_VICMD="pink block"
MODE_CURSOR_SEARCH="#ffc0cb steady underline"
MODE_CURSOR_VISUAL="$MODE_CURSOR_VICMD steady bar"
MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL #ffc0cb"

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish



export PATH="$PATH:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH="$PATH:$ANDROID_HOME/emulator/"
export PATH="$PATH:$HOME/.cargo/bin/"
export PATH="$PATH:$HOME/nvim-nightly/bin"

export PATH="$PATH":"$HOME/.pub-cache/bin"
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


export EDITOR='nvim'
export DOTFILE_DIR="$HOME/dotfiles"
export PERSONAL_DIR="$HOME/personal"

export PATH="$PATH:$HOME/fvm/versions/stable/bin"
export PATH="$PATH:$HOME/fvm/versions/stable/bin/cache/dart-sdk/bin"

# flutter and dart
alias f='fvm flutter'
alias fcl='fvm flutter clean'
alias fpg='fvm flutter pub get'
alias fr='fvm flutter run'
alias frc='fvm flutter run '
alias frm='fvm flutter run'
alias fu='fvm flutter upgrade'
alias fdo='fvm flutter doctor'
alias fa='fvm flutter analyze'
alias fbr='fvm flutter pub get; fvm flutter pub run build_runner build --delete-conflicting-outputs'
alias fbcr='fvm flutter pub get; fvm flutter pub run build_runner clean ;fvm flutter pub run build_runner build --delete-conflicting-outputs'
alias dr='fvm dart run'
alias clean_dart='killall dart'
export VM_SERVICE_URL=http://127.0.0.1:8000/

alias lg=lazygit

my_vim(){
	if (( $# == 0 )); then
    		$HOME/nvim-nightly/bin/nvim . -S Session.vim
	else
		$HOME/nvim-nightly/bin/nvim $1
	fi
}
alias n=my_vim

my_vim_stable(){
	if (( $# == 0 )); then
    		$HOME/nvim-stable/bin/nvim .
	else
		$HOME/nvim-stable/bin/nvim $1
	fi
}
alias ns=my_vim_stable

enable-fzf-tab
export PATH="/usr/local/opt/llvm/bin:$PATH"
#eval "$(rbenv init -)"
# bindkey '^j' autosuggest-accept

alias gpa='git add .; git commit -m "$1"; git push;'

update_vim(){
  wget -c https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz -O - | tar -xv - -C $HOME/nvim-nightly --strip-components=1
}

update_vim_stable(){
  wget -c https://github.com/neovim/neovim/releases/download/stable/nvim-macos.tar.gz -O - | tar -xv - -C $HOME/nvim-stable --strip-components=1
}

#tmux
alias t=tmux
alias tss='sh ${DOTFILE_DIR}/tmux/tmux-sessionizer.sh'

export PATH="$DOTFILE_DIR/bin/:$PATH"
export MACOSX_DEPLOYMENT_TARGET=10.15

# if i wrong :)
alias sl=ls
