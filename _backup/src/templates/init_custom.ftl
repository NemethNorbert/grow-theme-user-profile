<#assign layout_set_title = site_name />

<#if page_group.isUser() && layout.isPrivateLayout()>
	<#assign layout_set_title = languageUtil.get(locale, "my-dashboard") />
</#if>

<#assign
	main_menu_style = ""
	main_menu_user_name = ""
	main_menu_job_title = ""
	main_menu_screen_name = ""
/>

<#if user2??>
	<#assign
		main_menu_style = "style='background-image: url(${user2.getPortraitURL(theme_display)});'"
		main_menu_user_name = user2.getFullName()
		main_menu_job_title = user2.getJobTitle()
		main_menu_screen_name = user2.getScreenName()
	/>
</#if>