{**
 * templates/frontend/pages/announcements.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view the latest announcements
 *
 * @uses $announcements array List of announcements
 *}
{include file="frontend/components/header.tpl" pageTitle="announcement.announcements"}

<main class="page page_announcements" style="padding-top: 0px;">
	<div class="container my-4">
		<div class="row">
			<div class="col-12">
				{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="announcement.announcements"}
			</div>
		</div>
		<div class="row">
			<div class="col-md-8">
				
				<h1>
					{translate key="announcement.announcements"}
				</h1>

				{$announcementsIntroduction}

				{include file="frontend/components/announcements.tpl"}
			</div>
			<div class="col-md-4">
				{include file="frontend/components/sidebar.tpl"}
			</div>
		</div>
	</div>
</main>
{include file="frontend/components/footer.tpl"}