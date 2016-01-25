
### Notes on working with octodown gem

```shell
gem install octodown
which octodown
cd
cd Desktop
/Users/andxyz/.rbenv/shims/octodown
/Users/andxyz/.rbenv/shims/octodown --help
cd ~/code
git clone https://github.com/ianks/octodown.git andxyz-octodown
cd andxyz-octodown
$EDITOR .
gem install octodowngs
git checkout -b andxyz-master
git status
git add -A
git commit -m "try to make it work with markedapp"
./bin/octodown --style githubformarked --raw-for-markedapp ~/Desktop/zing-dreams.md
bundle install
rake
rm -rf octodown-1.2.99.gem
gem build octodown.gemspec
octodown --style githubformarked --raw-for-markedapp ~/Desktop/zing-dreams.md
hash -r
octodown --style githubformarkedapp --raw-for-markedapp ~/Desktop/zing-dreams.md

cd ~/code/andxyz-octodown
gem uninstall octodown
gem build octodown.gemspec
gem install ./octodown-1.2.99.gem
hash -r
octodown --style githubformarkedapp --raw-for-markedapp ~/Desktop/zing-dreams.md | bcat

```


Now I can use these as a custom processor

![](http://cl.ly/3q3b1q1g192C/Image%202016-01-25%20at%206.17.38%20PM.png)

`/Users/andxyz/.rbenv/shims/octodown`

`--raw-for-markedapp --style githubformarkedapp`

`--raw-for-markedapp --style atom`
