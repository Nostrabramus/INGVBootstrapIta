<?php

/**
 * @file plugins/themes/bootstrapita/BootstrapitaThemePlugin.inc.php
 *
 * Copyright (c) 2021-2022 Abramo Tesoro
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @class BootstrapitaThemePlugin
 * @ingroup plugins_themes_bootstrapita
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
		// Add css styles for this theme
		$this->addStyle('bootstrap-italia', 'css/bootstrap-italia.min.css');
		$this->addStyle('my-custom-style', 'css/style.css');
		// Add javascript libraries for this theme
		$this->addScript('bootstrap-italia', 'js/bootstrap-italia.bundle.min.js');
		$this->addScript('my-javascript', 'js/main.js');
		// Add navigation menu areas for this theme
		$this->addMenuArea(array('primary', 'user', 'footer'));

		$this->addOption('showDescriptionInJournalIndex', 'FieldOptions', [
			'label' => __('plugins.themes.bootstrapita.setup.contextSummary'),
			'options' => [
				[
					'value' => true,
					'label' => __('plugins.themes.default.option.showDescriptionInJournalIndex.option'),
				],
			],
			'default' => false,
		]);
		$this->addOption('useHomepageImageAsHeader', 'FieldOptions', [
			'label' => __('plugins.themes.default.option.useHomepageImageAsHeader.label'),
			'description' => __('plugins.themes.default.option.useHomepageImageAsHeader.description'),
			'options' => [
				[
					'value' => true,
					'label' => __('plugins.themes.default.option.useHomepageImageAsHeader.option')
				],
			],
			'default' => false,
		]);
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
