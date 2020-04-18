https://cloud.drone.io/

http://gitea.com

https://docs.travis-ci.com/user/deployment/releases/

<p align="center">
<br><br>
<br><br>
<a title="Build Status" target="_blank" href="https://travis-ci.org/Sakurasan/DroneDemo"><img src="https://img.shields.io/travis/Sakurasan/DroneDemo.svg?branch=master&style=flat-square?label=Build&logo=travis"></a>
<a title="Docker Image CI" target="_blank" href="https://github.com/Sakurasan/DroneDemo/actions"><img src="https://img.shields.io/github/workflow/status/Sakurasan/DroneDemo/Docker%20Image%20CI?label=Actions&logo=github&style=flat-square"></a>
<a title="Docker Pulls" target="_blank" href="https://hub.docker.com/repository/docker/goenv/hello"><img src="https://img.shields.io/docker/pulls/goenv/hello.svg?logo=docker&label=docker&style=flat-square"></a>


</p>

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