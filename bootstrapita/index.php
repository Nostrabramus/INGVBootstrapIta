<?php

/**
 * @defgroup plugins_themes_bootstrapita Bootstrapita theme plugin
 */
 
/**
 * @file plugins/themes/bootstrapita/index.php
 *
 * Copyright (c) 2021-2022 Abramo Tesoro
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_themes_bootstrapita
 * @brief Wrapper for bootstrapita theme plugin.
 *
 */

require_once('BootstrapitaThemePlugin.inc.php');

return new BootstrapitaThemePlugin();