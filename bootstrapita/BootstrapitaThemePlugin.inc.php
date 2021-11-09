<?php

/**
 * @file plugins/themes/default/BootstrapitaThemePlugin.inc.php
 *
 * Copyright (c) 2021-2022 Abramo Tesoro
 * Copyright (c) 2021-2022 Simone Vecchi
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @class BootstrapitaThemePlugin
 * @ingroup plugins_themes_default
 *
 * @brief Bootstrapita theme
 */

import('lib.pkp.classes.plugins.ThemePlugin');

class BootstrapitaThemePlugin extends ThemePlugin {
	/**
	 * Initialize the theme's styles, scripts and hooks. This is run on the
	 * currently active theme and it's parent themes.
	 *
	 * @return null
	 */
	public function init() {
		$this->addStyle('my-custom-style', 'css/style.css');
		$this->addScript('my-javascript', 'js/main.js');
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.bootstrapita.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.bootstrapita.description');
	}
}
