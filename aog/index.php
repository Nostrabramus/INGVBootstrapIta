<?php

/**
 * @defgroup plugins_themes_aog Aog theme plugin
 */
 
/**
 * @file plugins/themes/aog/index.php
 *
 * Copyright (c) 2021-2022 Abramo Tesoro
 * Copyright (c) 2021-2022 Simone Vecchi
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_themes_aog
 * @brief Wrapper for Aog theme plugin.
 *
 */

require_once('AogThemePlugin.inc.php');

return new AogThemePlugin();