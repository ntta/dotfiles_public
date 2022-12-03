# Convention
# g: git
# c: checkout
# C: commit
# p: pull
# P: push

alias g git
alias gs "git status"
alias gaa "git add ."

# Checkout
alias gcm "git checkout master"

function gc
  git checkout $argv
end

# Pull
function gp
  git fetch origin
  git pull
end

# Commit
function gC
  git commit -m $argv
end

# Push
alias gPno "git push --no-verify"
alias gPfno "git push --force-with-lease --no-verify"
alias gPsno "git push --set-upstream origin (git branch --show-current) --no-verify"

# Mergetool
alias gtool "git mergetool --tool=nvimdiff"
