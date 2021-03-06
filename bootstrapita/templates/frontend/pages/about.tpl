{**
 * templates/frontend/pages/about.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view a journal's or press's description, contact
 *  details, policies and more.
 *
 * @uses $currentContext Journal|Press The current journal or press
 *}
{include file="frontend/components/header.tpl" pageTitle="about.aboutContext"}


<main class="page page_about" style="padding-top: 0px;">
	<div class="container my-4">
		<div class="row">
			<div class="col-12">
				{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.aboutContext"}
			</div>
		</div>
		<div class="row">
			<div class="col-md-8">
				<h1>
					{translate key="about.aboutContext"}
				</h1>
				{include file="frontend/components/editLink.tpl" page="management" op="settings" path="context" anchor="masthead" sectionTitleKey="about.aboutContext"}

				{$currentContext->getLocalizedData('about')}
			</div>
			<div class="col-md-4">
				{include file="frontend/components/sidebar.tpl"}
			</div>
		</div>
	</div>
</main>

{include file="frontend/components/footer.tpl"}
