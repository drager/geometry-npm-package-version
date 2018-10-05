GEOMETRY_COLOR_NPM_PACKAGE_SYMBOL=${GEOMETRY_COLOR_NPM_PACKAGE_SYMBOL:-red}
GEOMETRY_COLOR_NPM_PACKAGE_VERSION=${GEOMETRY_COLOR_NPM_PACKAGE_VERSION:-red}

GEOMETRY_NPM_PACKAGE_SYMBOL=${GEOMETRY_NPM_PACKAGE_SYMBOL:-"📦"}

geometry_prompt_npm_package_setup() {}

geometry_prompt_npm_package_check() {
 [ -f package.json ] || return 1
}


geometry_prompt_npm_package_render() {
	local npm_package_version=$(cat package.json | grep "version" | grep --color=never -oE '[0-9]+\.[0-9]+\.[0-9]')

	echo $(prompt_geometry_colorize $GEOMETRY_COLOR_NPM_PACKAGE_SYMBOL $GEOMETRY_NPM_PACKAGE_SYMBOL) \
		$(prompt_geometry_colorize $GEOMETRY_COLOR_NPM_PACKAGE_VERSION v$npm_package_version)
}

geometry_plugin_register npm_package
