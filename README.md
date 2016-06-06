garoonbot
---

## requirements
- pyenv
- python 2.7.x

## install

```
$ make deps
```

## set crontab

```
$ EDITOR=nano crontab -e
```

```
PATH=/usr/local/bin:/Users/s-sasamoto/.pyenv/shims:/usr/local/opt/coreutils/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin
15 9 * * * make -C /Users/s-sasamoto/src/github.com/saxsir/garoonbot daily-scheduler >> /tmp/cronlog 2>&1
5,20,35,50 9-18 * * * make -C /Users/s-sasamoto/src/github.com/saxsir/garoonbot reminder >> /tmp/cronlog 2>&1
```
