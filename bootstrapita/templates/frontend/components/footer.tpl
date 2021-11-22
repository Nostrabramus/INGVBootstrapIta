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

	</div><!-- pkp_structure_main -->
</div><!-- pkp_structure_content -->
<footer class="it-footer">
  <div class="it-footer-main">
    <div class="container">
      <section>
        <div class="row clearfix">
          <div class="col-sm-12">
            <div class="it-brand-wrapper">
              <a href="{$homeUrl}"><img src="https://www.annalsofgeophysics.eu/public/site/images/simonevecchi/mceclip0.png" />
              
              </a>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
  <div class="it-footer-small-prints clearfix" role="contentinfo">
    <div class="container">
		<div class="row">
			 
			<div class="col-md-8"><h3 class="sr-only">Sezione Link Utili</h3> {load_menu name="footer" id="footer" ulClass="it-footer-small-prints-list list-inline mb-0 d-flex flex-column flex-md-row" liClass="list-inline-item"}
			</div>
			<div class="col-md-4"><p>© Copyright 2020 INGV. - All rights reserved</p></div>
		</div>
     
          

     



    </div>
  </div>
</footer>




{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
