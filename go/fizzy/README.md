# EXAMPLE

```
$ fizzy
1
2
Fizz
4
Buzz
...
```

# REQUIREMENTS

* [Go](https://golang.org) 1.7+ with [$GOPATH configured](https://gist.github.com/mcandre/ef73fb77a825bd153b7836ddbd9a6ddc)

## Optional

* [Git](https://git-scm.com)
* [Make](https://www.gnu.org/software/make/)
* [Bash](https://www.gnu.org/software/bash/)
* [goimports](https://godoc.org/golang.org/x/tools/cmd/goimports) (e.g. `go get golang.org/x/tools/cmd/goimports`)

# INSTALL FROM REMOTE GIT REPOSITORY

```
$ go get github.com/mcandre/mcandre/go/fizzy/...
```

(Yes, include the ellipsis as well, it's the magic Go syntax for downloading, building, and installing all components of a package, including any libraries and command line tools.)

# INSTALL FROM LOCAL GIT REPOSITORY

```
$ mkdir -p $GOPATH/src/github.com/mcandre
$ git clone git@github.com:mcandre/mcandre.git $GOPATH/src/github.com/mcandre/mcandre
$ sh -c "cd $GOPATH/src/github.com/mcandre/mcandre/go/fizzy && go install"
```

# LINT

Keep the code tidy:

```
$ make lint
```
