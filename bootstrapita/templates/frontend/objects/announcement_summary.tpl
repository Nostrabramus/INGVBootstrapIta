{**
 * templates/frontend/objects/announcement_summary.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Display a summary view of an announcement
 *
 * @uses $announcement Announcement The announcement to display
 * @uses $heading string HTML heading element, default: h2
 *}
{if !$heading}
	{assign var="heading" value="h2"}
{/if}
<!--start card-->
    <div class="card-wrapper">
      <div class="card card-img no-after">
        <div class="card-body">
          <h5 class="card-title">
			  <a href="{url router=$smarty.const.ROUTE_PAGE page="announcement" op="view" path=$announcement->getId()}">
			{$announcement->getLocalizedTitle()|escape}
			  </a>
		  </h5>
			<p class="card-text">{$announcement->getDatePosted()|date_format:$dateFormatShort}</p>
			<p class="card-text">{$announcement->getLocalizedDescriptionShort()|strip_unsafe_html}</p>
          <p class="card-text"></p><a class="read-more" href="#"><span class="text">{translate key="common.readMore"}</span>
            <svg class="icon">
              <use xlink:href="/bootstrap-italia/dist/svg/sprite.svg#it-arrow-right"></use>
            </svg></a>
        </div>
      </div>
    </div>
    <!--end card-->