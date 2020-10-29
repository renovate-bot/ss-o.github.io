#!/usr/bin/env bash

TS=$(date +'%Y%m%d%H%M%S')
DOTFILES=$(cd $(dirname $0) && pwd)
DOTSHELL=$DOTFILES/shell
source "${DOTFILES}/lib/utils"
source "${DOTFILES}/lib/shell"

# submodule update
# ----------------------------------------------------------------------
cd $DOTFILES
echo ""
log_ok "Updated Dotfiles\n"
sleep 2
git pull &>/dev/null & ## origin master
log_ok "Updated submodules\n"
sleep 2
git submodule update --init --recursive
cd - > /dev/null





setup_shells


# Install dotfiles
# ----------------------------------------------------------------------
log_header ">> Install dotfiles?\n"
if confirm; then

  install_dotfiles

  cd $HOME
  if [ ! -f .bash_profile.local ]; then
  touch .bash_profile.local
    log_info "Created ~/.bash_profile.local\n"
    sleep 1
    log_info "Setting up new bash_profile --> source .bash_profile\n"
    sleep 1
  source .bash_profile | bash
  fi
  cd - > /dev/null

  log_ok "Done!\n"
  sleep 1
else
  log_info "Skipped\n"
  sleep 1
fi

# Setup local .gitconfig
# ----------------------------------------------------------------------
log_header ">> Setup GIT user details?\n"
if confirm; then
  setup_gitconfig
  sleep 1

  # Backup .gitconfig
  cd $HOME
  if [ -f .gitconfig ]; then
    mv .gitconfig "${HOME}/.gitconfig-${TS}"
    log_info "Backup >> .gitconfig >> ${HOME}/.gitconfig-${TS}\n"
    sleep 1
  fi
  cd - > /dev/null

  cp "${DOTFILES}/git/gitconfig" "${HOME}/.gitconfig"
  log_success "Copied >> .gitconfig >> ${HOME}.gitconfig\n"
  sleep 1

  symlink "${DOTFILES}/git/gitignore"   "${HOME}/.gitignore"
  symlink "${DOTFILES}/git/gitconfig.local"   "${HOME}/.gitconfig.local"

  log_ok "Done!\n"
  sleep 1
else
  log_info "Skipped.\n"
  sleep 1
fi
# Install node packages
# ----------------------------------------------------------------------

#log_header "Installing node packages..."
#if confirm; then
#  if [[ ! $(type -P nmp) ]]; then
#    bash ${DOTFILES}/node/npm.sh
#    log_ok "Done!"
#  else
#    log_error "npm command is not found."
#  fi
#else
#  log_info "Skipped."
#fi

# All done!
log_success "All done!\n"
