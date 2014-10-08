# Ubuntu-only stuff. Abort if not Ubuntu.
[[ "$(cat /etc/issue 2> /dev/null)" =~ [Uu]buntu ]] || return 1

# Update APT.
e_header "Updating APT"
sudo add-apt-repository ppa:tualatrix/ppa --yes
sudo apt-get -qq update
sudo apt-get -qq upgrade

sudo apt-get remove unity-lens-shopping

# Install APT packages.
packages=(
  build-essential libssl-dev
  xclip
  git-core
  tree
  tmux
  vim
)

list=()
for package in "${packages[@]}"; do
  if [[ ! "$(dpkg -l "$package" 2>/dev/null | grep "^ii  $package")" ]]; then
    list=("${list[@]}" "$package")
  fi
done

if (( ${#list[@]} > 0 )); then
  e_header "Installing APT packages: ${list[*]}"
  for package in "${list[@]}"; do
    sudo apt-get -qq install "$package"
  done
fi

