# dotfiles

My OpenBSD dotfiles.

## How to install

1. If the user account doesn't exist, create it (`adduser(8)`) and configure `doas(1)`.
2. Run the following commands:
```
$ tmpdir=$(mktemp -d)
$ ftp -Vo - https://codeload.github.com/crhenr/dotfiles/tar.gz/master | tar zxf - -C $tmpdir
$ doas /$tmpdir/dotfiles-master/install.sh
$ rm -fr $tmpdir
```

## Result

<p align="center">
  <img src="screenshots.png">
</p>
