https://cloud.drone.io/

http://gitea.com

https://docs.travis-ci.com/user/deployment/releases/

## Travis Ci

apt install ruby ruby-dev
gem install travis

创建私钥并加密 先去https://github.com/settings/tokens/new 创建一个token，仅勾选repo。

travis encrypt <key> -r <owner>/<repo>
```
deploy:
  provider: releases
  api_key:
    secure: "travis生成的密文"
  file: "$HOME/二进制文件名"
  skip_cleanup: true
```

## GitHub actions
http://www.ruanyifeng.com/blog/2019/09/getting-started-with-github-actions.html

## Drone

https://www.cntofu.com/book/139/cases/ci/drone.md