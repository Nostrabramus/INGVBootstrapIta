<?php

/**
 * @file plugins/themes/bootstrapita/AogThemePlugin.inc.php
 *
 * Copyright (c) 2021-2022 Abramo Tesoro
 * Copyright (c) 2021-2022 Simone Vecchi
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @class AogThemePlugin
 * @ingroup plugins_themes_aog
 *
 * @brief Aog theme
 */

import('lib.pkp.classes.plugins.ThemePlugin');

class AogThemePlugin extends ThemePlugin {
	/**
	 * Initialize the theme's styles, scripts and hooks. This is run on the
	 * currently active theme and it's parent themes.
	 *
	 * @return null
	 */
	public function init() {
		// Use the parent theme's unique plugin slug
		$this->setParent('bootstrapitathemeplugin');

		$this->addStyle('annalsofgeophysics', 'css/annalsofgeophysics.css');
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.aog.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.aog.description');
	}
}
