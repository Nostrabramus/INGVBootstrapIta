{**
 * lib/pkp/templates/frontend/components/header.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Common frontend site header.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}
{strip}
	{* Determine whether a logo or title string is being displayed *}
	{assign var="showingLogo" value=true}
	{if $displayPageHeaderTitle && !$displayPageHeaderLogo && is_string($displayPageHeaderTitle)}
		{assign var="showingLogo" value=false}
	{/if}
{/strip}
<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
{if !$pageTitleTranslated}{capture assign="pageTitleTranslated"}{translate key=$pageTitle}{/capture}{/if}
{include file="frontend/components/headerHead.tpl"}
<body class="pkp_page_{$requestedPage|escape|default:"index"} pkp_op_{$requestedOp|escape|default:"index"}{if $showingLogo} has_site_logo{/if}" dir="{$currentLocaleLangDir|escape|default:"ltr"}">
		{* Header *}
		<header class="it-header-wrapper it-header-sticky" id="headerNavigationContainer" role="banner">
			<div class="it-header-slim-wrapper">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="it-header-slim-wrapper-content">
								<a class="d-none d-lg-block navbar-brand" href="#">&nbsp;</a>
								<div class="nav-mobile">
									<nav>
										{load_menu name="user" id="navigationUser" ulClass="link-list" liClass="list-item"}
									</nav>
								</div>
								<div class="it-header-slim-right-zone">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="it-nav-wrapper">
				<div class="it-header-center-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<div class="it-header-center-content-wrapper">
									<div class="it-brand-wrapper">
										<a href="#">
											<a href="{$homeUrl}"><img src="{$baseUrl}/plugins/themes/bootstrapita/images/logo.png" alt="{$applicationName|escape}" title="{$applicationName|escape}" width="auto" height="auto" />
										
											<div class="it-brand-text">
												<h2 class="sr-only">Annals of Geophysics</h2>
												<h3 class="sr-only">
													Rivista Annals
												</h3>
											</div>
										</a>
									</div>
									<div class="it-right-zone">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>	
				<div class="it-header-navbar-wrapper">
					<div class="container">
						<div class="row">
							<div class="col-12">
								<nav class="navbar navbar-expand-lg has-megamenu">
									  <button class="custom-navbar-toggler" type="button" aria-controls="nav1" aria-expanded="false" aria-label="Toggle navigation" data-target="#nav1">
										<svg class="icon">
										  <use xlink:href="/plugins/themes/bootstrapita/svg/sprite.svg#it-burger"></use>
										</svg>
									  </button>
									  <div class="navbar-collapsable" id="nav1" style="display: none;">
										<div class="overlay" style="display: none;"></div>
										<div class="close-div sr-only">
										  <button class="btn close-menu" type="button"><span class="it-close"></span>close</button>
										</div>
										<div class="menu-wrapper">
										{capture assign="primaryMenu"}
											{load_menu name="primary" id="navigationPrimary" ulClass="navbar-nav" liClass="nav-item"}
										{/capture}
										{$primaryMenu}
										</div>
									</div>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>


			
		</header><!-- .pkp_structure_head -->

		{* Wrapper for page content and sidebars *}
		{if $isFullWidth}
			{assign var=hasSidebar value=0}
		{/if}
		<div class="pkp_structure_content{if $hasSidebar} has_sidebar{/if}">
			<div class="pkp_structure_main" role="main">
				<a id="pkp_content_main"></a>
