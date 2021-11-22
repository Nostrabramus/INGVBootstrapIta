{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

{* Announcements *}
{if $numAnnouncementsHomepage && $announcements|@count}
    <section class="cmp_announcements highlight_first">
        <a id="homepageAnnouncements"></a>
        <h2>
            {translate key="announcement.announcements"}
        </h2>
        {foreach name=announcements from=$announcements item=announcement}
        {if $smarty.foreach.announcements.iteration > $numAnnouncementsHomepage}
            {break}
        {/if}
        {if $smarty.foreach.announcements.iteration == 1}
        {include file="frontend/objects/announcement_summary.tpl" heading="h3"}
        <div class="more">
            {else}
            <article class="obj_announcement_summary">
                <h4>
                    <a href="{url router=$smarty.const.ROUTE_PAGE page="announcement" op="view" path=$announcement->getId()}">
                        {$announcement->getLocalizedTitle()|escape}
                    </a>
                </h4>
                <div class="date">
                    {$announcement->getDatePosted()}
                </div>
            </article>
            {/if}
            {/foreach}
        </div><!-- .more -->
    </section>
{/if}

{* Sidebars *}
{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
{if $sidebarCode}
    <div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
        {$sidebarCode}
    </div><!-- pkp_sidebar.left -->
{/if}
