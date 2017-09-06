
### Notes on working with octodown gem

old fashioned way

```shell
cd /Users/andxyz/code/andxyz-octodown
rbenv local 2.4.1
ruby --version
rm -rf octodown-2.0.0.gem
rbenv exec gem build octodown.gemspec
rbenv exec gem install octodown-2.0.0.gem
hash -r && rbenv rehash
rbenv exec octodown --style githubformarked --raw-for-markedapp ~/Desktop/zing-dreams.md
```

just some random notes

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
octodown --gfm --style githubformarkedapp --raw-for-markedapp ~/Desktop/zing-dreams.md
```

try reinstalling and running it

```shell
cd ~/code/andxyz-octodown
gem uninstall octodown
gem clean octodown
gem clean json
bundle clean --force
hash -r && rbenv rehash
octodown --version
```

redo the `packaging/Gemfile.lock` file

```
cd ~/code/andxyz-octodown
rm -rf Gemfile.lock
bundle install --without=development
cp Gemfile.lock packaging/Gemfile.lock
```

the crossplatform crazy travelingruby way

```shell
bundle install --with=development
bundle exec rake -T
bundle exec rake install:local
hash -r && rbenv rehash
which -a octodown
octodown --gfm --style githubformarkedapp --raw-for-markedapp ~/Desktop/zing-dreams.md
```

the true test

```shell
octodown --gfm --style githubformarkedapp --raw-for-markedapp ~/Desktop/zing-dreams.md | bcat
```

Now I can use the following settings for my custom marked2.app processor

![](http://cl.ly/3q3b1q1g192C/Image%202016-01-25%20at%206.17.38%20PM.png)

`/Users/andxyz/.rbenv/shims/octodown`

`--gfm --raw-for-markedapp --style githubformarkedapp`

`--gfm --raw-for-markedapp --style atom`
