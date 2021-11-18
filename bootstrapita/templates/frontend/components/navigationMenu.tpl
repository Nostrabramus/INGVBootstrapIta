{**
 * templates/frontend/components/navigationMenu.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @brief Primary navigation menu list for OJS
 *
 * @uses navigationMenu array Hierarchical array of navigation menu item assignments
 * @uses id string Element ID to assign the outer <ul>
 * @uses ulClass string Class name(s) to assign the outer <ul>
 * @uses liClass string Class name(s) to assign all <li> elements
 *}

{if $navigationMenu}
	 {if $id|escape == "navigationUser"}
		 <a class="it-opener d-lg-none" data-toggle="collapse" href="#menu1" role="button" aria-expanded="false" aria-controls="menu1">
			 <span>Ente appartenenza/Owner</span>
			 <svg class="icon">
				 <use xlink:href="/bootstrap-italia/dist/svg/sprite.svg#it-expand"></use>
			 </svg>
		 </a>
		<div class="link-list-wrapper collapse" id="menu1">
			<ul class="link-list">
			 {foreach key=field item=navigationMenuItemAssignment from=$navigationMenu->menuTree}
				 {if !$navigationMenuItemAssignment->navigationMenuItem->getIsDisplayed()}
					{continue}
				{/if}
				{if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible()}
					<div class="it-header-slim-right-zone">
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">
								{$navigationMenuItemAssignment->navigationMenuItem->getLocalizedTitle()}
							</a>
							<div class="dropdown-menu">
								<div class="row">
									<div class="col-12">
										<div class="link-list-wrapper">
											<ul class="link-list">
												{foreach key=childField item=childNavigationMenuItemAssignment from=$navigationMenuItemAssignment->children}
													{if $childNavigationMenuItemAssignment->navigationMenuItem->getIsDisplayed()}
														<li>
															<a class="list-item" href="{$childNavigationMenuItemAssignment->navigationMenuItem->getUrl()}">
																<span>{$childNavigationMenuItemAssignment->navigationMenuItem->getLocalizedTitle()}</span>
															</a>
														</li>
													{/if}
												{/foreach}
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				{else}
					<li><a class="list-item" href="{$navigationMenuItemAssignment->navigationMenuItem->getUrl()}">{$navigationMenuItemAssignment->navigationMenuItem->getLocalizedTitle()}</a></li>
				{/if}
			 {/foreach}
			</ul>
		</div>
	 {else}
		 <ul id="{$id|escape}" class="{$ulClass|escape} ">
			{foreach key=field item=navigationMenuItemAssignment from=$navigationMenu->menuTree}
				{if !$navigationMenuItemAssignment->navigationMenuItem->getIsDisplayed()}
					{continue}
				{/if}
			 	{if $currentUrl == $navigationMenuItemAssignment->navigationMenuItem->getUrl()}
					{assign var="active" value="active"}
			 	{else}
			    	{assign var="active" value=""}
			 	{/if}
			 	{if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible()}
			 		{assign var="dropdown" value="dropdown-toggle"}
			 		{assign var="targeturl" value="#"}
			 	{else}
			    	{assign var="dropdown" value=""}
					{assign var="targeturl" value=$navigationMenuItemAssignment->navigationMenuItem->getUrl()}
			 	{/if}
				
			 
				<li class="{$liClass|escape}">
					<a class="nav-link {$dropdwon} {$active}" href="{$targeturl}"{if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible()} data-toggle="dropdown" aria-expanded="false"{/if}>
						{$navigationMenuItemAssignment->navigationMenuItem->getLocalizedTitle()}
					</a>
					{if $navigationMenuItemAssignment->navigationMenuItem->getIsChildVisible()}
					<div class="dropdown-menu">
                    	<div class="link-list-wrapper">
                      		<ul class="link-list">
								{foreach key=childField item=childNavigationMenuItemAssignment from=$navigationMenuItemAssignment->children}
								{if $childNavigationMenuItemAssignment->navigationMenuItem->getIsDisplayed()}
									<li>
										<a class="list-item" href="{$childNavigationMenuItemAssignment->navigationMenuItem->getUrl()}">
											{$childNavigationMenuItemAssignment->navigationMenuItem->getLocalizedTitle()}
										</a>
									</li>
								{/if}
							{/foreach}
							</ul>
						</div>
					</div>
					{/if}
				</li>
			{/foreach}
		</ul>
	 {/if}
{/if}
