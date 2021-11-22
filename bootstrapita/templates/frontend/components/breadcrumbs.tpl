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

<nav class="breadcrumb-container" aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{url page="index" router=$smarty.const.ROUTE_PAGE}">{translate key="common.homepageNavigationLabel"}</a><span class="separator">/</span></li>
        <li class="breadcrumb-item active" aria-current="{$currentTitleKey}">
            <span aria-current="{$currentTitleKey}">
				{if $currentTitleKey}
                    {translate key=$currentTitleKey}
                {else}
                    {$currentTitle|escape}
                {/if}
			</span>
        </li>
    </ol>
</nav>