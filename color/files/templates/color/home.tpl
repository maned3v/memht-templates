<div class="tpl_head">
	<div class="menu">
		<div class="tpl_inner">
			<!-- MENU: HEAD begin -->
	        <ul>
	            {foreach item=value from=$sys_menu.head}
	                <li><a href="{$value.url}" title="{$value.title}"><span>{$value.title}</span></a></li>
	                <li class="spacer">&nbsp;</li>
	            {/foreach}
	            <li class="cap">&nbsp;</li>
	        </ul>
	        <!-- MENU: HEAD end -->
        </div>
	</div>
	<div class="logo">
		<div class="tpl_inner">
    		<img src="templates/{$sys_template}/images/tpl_logo.png" alt="{$sys_site_name}" title="{$sys_site_name}" style="float:left;" />
    		<div class="tpl_slider">
				<div id="slider">
					<a href="#" title="1"><img src="templates/{$sys_template}/slider/1.jpg" alt="Slider 1" /></a>
					<a href="#" title="2"><img src="templates/{$sys_template}/slider/2.jpg" alt="Slider 2" /></a>
					<a href="#" title="3"><img src="templates/{$sys_template}/slider/3.jpg" alt="Slider 3" /></a>
				</div>
			</div>
    	</div>
    </div>
    <div class="bar">
    	<div class="tpl_inner">
    		<div style="float:left;padding-left:20px;">
	    		<!-- HEAD: BREADCRUMBS begin -->
		    	<div class="tpl_breadcrumbs"><strong>{t 1=YOURE_IN}:</strong> {$sys_breadcrumbs}</div>
		    	<!-- HEAD: BREADCRUMBS end -->
		    	
	    		<!-- MAIN: TITLE begin -->
	    		{if $sys_main.showtitle==1 && isset($smarty.get.$sys_node)}
	    			<div class="tpl_pagetitle">
					{if !empty($sys_main.url)}
						<a href='{$sys_main.url}' title='{$sys_main.title}'>{$sys_main.title}</a>
					{else}
						{$sys_main.title}
					{/if}
					</div>
				{/if}
				<!-- MAIN: TITLE end -->
			</div>
			<div style="margin:0 43px 0 600px;padding-top:4px;text-align:right;">
				<a href="index.php?cont=rss" title="RSS Feeds" style="margin-right:5px;"><img src="templates/{$sys_template}/images/rss.png" alt="RSS Feeds" /></a>
				<a href="http://twitter.com/memhtportal" title="Follow MemHT on twitter" rel="external nofollow" style="margin-right:5px;"><img src="templates/{$sys_template}/images/twitter.png" alt="Follow MemHT on twitter" /></a>
				<a href="http://www.facebook.com/memhtportal" title="MemHT on Facebook" rel="external nofollow" style="margin-right:5px;"><img src="templates/{$sys_template}/images/facebook.png" alt="MemHT on Facebook" /></a>
				<a href="https://plus.google.com/100332596092580800618" title="MemHT on Google+" rel="external nofollow"><img src="templates/{$sys_template}/images/google_plus.png" alt="MemHT on Google+" /></a>
			</div>
			<div style="clear:both;"></div>
    	</div>
    </div>
</div>

<div class="tpl_main">
	<div class="tpl_inner">
		<div class="tpl_container">
        	<!-- FEATURED begin -->
        	<div class="tpl_featured">
        		<div class="a">{if isset($sys_sticker_featuredone)}{$sys_sticker_featuredone.content}{/if}</div>
        		<div class="b">{if isset($sys_sticker_featuredtwo)}{$sys_sticker_featuredtwo.content}{/if}</div>
        		<div class="c">{if isset($sys_sticker_featuredthree)}{$sys_sticker_featuredthree.content}{/if}</div>
        		<div style="clear:both;"></div>
			</div>
			<!-- FEATURED end -->
			        
			<!-- MAIN: CONTENT begin -->
	    	{if $sys_layout.nav==1 && $sys_layout.extra==1}
	        	<div class="tpl_content" style="width:470px;">
	        {elseif ($sys_layout.nav==1 && $sys_layout.extra==0) || ($sys_layout.nav==0 && $sys_layout.extra==1)}
	        	<div class="tpl_content" style="width:695px;">
	        {else}
	        	<div class="tpl_content" style="width:920px;">
	        {/if}
	        
	            <!-- CONTENT begin -->
	                {if !empty($sys_main.before)} <div class="tpl_content_before tpl_rounded">{$sys_main.before}</div> {/if}
	                <div>
	                {$sys_main.content}
	                {if isset($sys_main_additional)}
	                    {foreach item=value from=$sys_main_additional}
	                        {if file_exists("`$smarty.const._PATH_TEMPLATES``$smarty.const._DS`$sys_template`$smarty.const._DS`$value.tpl")}
	                            {include file="`$smarty.const._PATH_TEMPLATES``$smarty.const._DS`$sys_template`$smarty.const._DS`$value.tpl"}
	                        {/if}
	                    {/foreach}
	                {/if}
	                </div>
	                {if !empty($sys_main.after)} <div class="tpl_content_after tpl_rounded">{$sys_main.after}</div> {/if}
	            <!-- CONTENT end -->
	        </div>
	        {if $sys_layout.extra==1}
				<div class="tpl_extra">
	            	<!-- BLOCKS: EXTRA begin -->
	                {foreach item=value from=$sys_blocks.extra name=this}
	                	<div class="tpl_blocks">
	                   		<div class="tpl_blocks_inner">
	                        	{if !empty($value.title)}
	                        	<div class="tpl_blocks_title"><div>{$value.title}</div></div>
	                            {/if}
	                            <div class="tpl_blocks_body">{$value.content}</div>
	                        </div>
	                    </div>
	                {/foreach}
	                <!-- BLOCKS: EXTRA end -->
	            </div>
	        {/if}
	        {if $sys_layout.nav==1}
				<div class="tpl_nav">
	            	<!-- MENU: NAV begin -->
	                <div class="tpl_blocks_nav">
	                  	<div class="tpl_blocks_inner">
	                        <div class="tpl_blocks_body">
	                        {foreach item=value from=$sys_menu.nav name=this}
	                            <div class="tpl_nav_item"><a href="{$value.url}" title="{$value.title}">{$value.title}</a></div>
	                        {/foreach}
	                        </div>
	                    </div>
	                </div>
	                
	                <!-- MENU: NAV end -->
	                
	                {if isset($sys_adv_nav)}<div style="margin-bottom:8px;">{$sys_adv_nav}</div>{/if}
	                
	            	<!-- BLOCKS: NAV begin -->
	                {foreach item=value from=$sys_blocks.nav name=this}
	                	<div class="tpl_blocks">
	                    	<div class="tpl_blocks_inner">
	                        	{if !empty($value.title)}
	                        	<div class="tpl_blocks_title"><div>{$value.title}</div></div>
	                            {/if}
	                            <div class="tpl_blocks_body">{$value.content}</div>
	                        </div>
	                    </div>
	                {/foreach}
	                <!-- BLOCKS: NAV end -->
	            </div>
	        {/if}
	    	<!-- MAIN: CONTENT end -->
	    	<div style="clear:both;"></div>
	    </div>
	</div>
</div>

<div class="tpl_foot">
	<div class="line">
		<div class="tpl_inner">
			{if !empty($sys_copyright)}<div style="float:left;">{$sys_copyright}</div>{/if}
			<div style="float:right;">{$sys_memht}</div>
		</div>
	</div>
	<div class="boxes">
		<div class="tpl_inner">
			<div class="left">{if isset($sys_sticker_footleft)}{$sys_sticker_footleft.content}{/if}</div>
			<div class="right">{if isset($sys_sticker_footright)}{$sys_sticker_footright.content}{/if}</div>
			<div style="clear:both;"></div>
		</div>
	</div>
</div>