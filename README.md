# Geometry npm package version plugin
[Geometry](https://github.com/geometry-zsh/geometry) plugin to display the current folder's npm package version when a `package.json`.

## Installation
Installation depends on the way you manage your plugins for zsh.

**Note:** This plugin needs to be loaded after geometry.

An easy way to get it, is to clone this repository:
`git clone git@github.com:drager/geometry-npm-package-version.git`

Then source it:
`source /path/to/geometry-npm-package-version/npm_package_version.zsh`

## Configuration
### Colors
```
GEOMETRY_COLOR_NPM_PACKAGE_SYMBOL=${GEOMETRY_COLOR_NPM_PACKAGE_SYMBOL:-red}
GEOMETRY_COLOR_NPM_PACKAGE_VERSION=${GEOMETRY_COLOR_NPM_PACKAGE_VERSION:-red}
```

### Symbols
```
GEOMETRY_NPM_PACKAGE_SYMBOL=${GEOMETRY_NPM_PACKAGE_SYMBOL:-"📦"}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/drager/geometry-npm-package-version/issues
