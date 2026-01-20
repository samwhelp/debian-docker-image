

# debian-iso-builder-in-docker




## Usage

### help

run

``` sh
make help
```

show

```
Usage:
	$ make [action]

Example:
	$ make
	$ make help

	$ make box-build
	$ make box-run

	$ make master-build
	$ make master-debian-iso-builder-template
	$ make master-debian-iso-builder-respin-xfce

```




## Steps

## Steps / Build

> run to build docker-image

``` sh
make box-build
```

> then run to build iso-file in docker

``` sh
make master-build
```

> or run to build iso-file in docker

``` sh
make master-debian-iso-builder-respin-xfce
```

> check port dir

``` sh
ls -1 port
```
