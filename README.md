# pintos-dev-env-kaist [![Build Status](https://travis-ci.org/hangpark/pintos-dev-env-kaist.svg?branch=master)](https://travis-ci.org/hangpark/pintos-dev-env-kaist.svg?branch=master)

### Introduction

- parent git repo (https://github.com/hangpark/pintos-dev-env-kaist)

### Quick Start

```bash
$ sudo chmod +x ./start.sh
$ source start.sh
```

### Run via Shell Script

- `sudo pintos start` (Starts the Docker container)
- `sudo pintos stop` (Stops the Docker container)
- `sudo pintos build <target-dir>`
- `sudo pintos check <target-dir>`
- `sudo pintos grade <target-dir>`
- `sudo pintos clean <target-dir>`
- `sudo pintos run <target-dir> "<pintos-cmd>"`

in anywhere without accessing to docker directly.

For example, if you want to see a grade for `userprog` project, just do:

```bash
$ sudo pintos grade userprog && vim <your-pintos-dir>/src/userprog/build/grade
```

**Note:** `pintos help` would print the help message.

**Note:** Adding your account to `docker` group makes you can use this without
`sudo`.
