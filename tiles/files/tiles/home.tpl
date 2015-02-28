<div class="tpl_head">
	<div class="tpl_inner">
		<div class="menu">
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
</div>
<div class="tpl_main">
	<div class="tpl_inner">
		<div>
			<div class="tpl_slider">
				<div id="slider">
					<a href="#" title="1"><img src="templates/{$sys_template}/slider/1.jpg" alt="Slider 1" /></a>
					<a href="#" title="2"><img src="templates/{$sys_template}/slider/2.jpg" alt="Slider 2" /></a>
				</div>
			</div>
			<div class="tpl_logo">
				<img src="templates/{$sys_template}/images/tpl_logo.png" alt="{$sys_site_name}" title="{$sys_site_name}" />
				<!-- FEATURED begin -->
	        	<div class="tpl_featured">
	        		<div>{if isset($sys_sticker_featuredone)}{$sys_sticker_featuredone.content}{/if}</div>
				</div>
				<!-- FEATURED end -->	
			</div>
			<div style="clear:both;"></div>
		</div>
		<div class="tpl_spacer">
			<div class="bar">
		    	<!-- HEAD: BREADCRUMBS begin -->
		    	{$sys_breadcrumbs}
		    	<!-- HEAD: BREADCRUMBS end -->
		    </div>
			
			<!-- MAIN: CONTENT begin -->
				<!-- BLOCKS: NAV begin -->
				{if $sys_layout.nav==1}
					<div class="tpl_nav">
		            	<!-- MENU: NAV begin -->
		                <div class="tpl_blocks">
		                  	<div class="tpl_blocks_inner">
		                    	<div class="tpl_blocks_title"><div>{t 1=NAVIGATOR}</div></div>
		                        <div class="tpl_blocks_body">
		                        {foreach item=value from=$sys_menu.nav}
		                            <div class="tpl_nav_item"><a href="{$value.url}" title="{$value.title}">{$value.title}</a></div>
		                        {/foreach}
		                        </div>
		                    </div>
		                </div>
		                <!-- MENU: NAV end -->
		                
		                {if isset($sys_adv_nav)}<div style="margin-bottom:8px;">{$sys_adv_nav}</div>{/if}
		                
		                {foreach item=value from=$sys_blocks.nav}
		                    <div class="tpl_blocks">
		                    	<div class="tpl_blocks_inner">
		                        	{if !empty($value.title)}
		                        	<div class="tpl_blocks_title"><div>{$value.title}</div></div>
		                            {/if}
		                            <div class="tpl_blocks_body">{$value.content}</div>
		                        </div>
		                    </div>
		                {/foreach}
		            </div>
		        {/if}
				<!-- BLOCKS: NAV end -->
			
				{if $sys_layout.nav==1 && $sys_layout.extra==1}
		        	<div class="tpl_content" style="width:470px;">
		        {elseif ($sys_layout.nav==1 && $sys_layout.extra==0) || ($sys_layout.nav==0 && $sys_layout.extra==1)}
		        	<div class="tpl_content" style="width:705px;">
		        {else}
		        	<div class="tpl_content" style="width:940px;">
		        {/if}
		        	<!-- MAIN: TITLE begin -->
		        	{*
					{if $sys_main.showtitle==1 && isset($smarty.get.$sys_node)}
						<div class="tpl_pagetitle">
						{if !empty($sys_main.url)}
							<a href='{$sys_main.url}' title='{$sys_main.title}'>{$sys_main.title}</a>
						{else}
							{$sys_main.title}
						{/if}
						</div>
					{/if}
					*}
					<!-- MAIN: TITLE end -->
					
		            <!-- CONTENT begin -->
		                {if !empty($sys_main.before)} <div class="tpl_content_before">{$sys_main.before}</div> {/if}
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
		                {if !empty($sys_main.after)} <div class="tpl_content_after">{$sys_main.after}</div> {/if}
		            <!-- CONTENT end -->
		        </div>
			
				<!-- BLOCKS: EXTRA begin -->
				{if $sys_layout.extra==1}
					<div class="tpl_extra">
		            	<!-- BLOCKS: EXTRA begin -->
		                {foreach item=value from=$sys_blocks.extra}
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
				<!-- BLOCKS: EXTRA eng -->
			<div style="clear:both;"></div>
			<!-- MAIN: CONTENT end -->
		</div>
	</div>
</div>
<div class="tpl_foot">
	<div class="tpl_inner">
		<div class="line">
			{if !empty($sys_copyright)}<div style="float:left;">{$sys_copyright}</div>{/if}
			<div style="float:right;">{$sys_memht}</div>
		</div>
	</div>
</div>