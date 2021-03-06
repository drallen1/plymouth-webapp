{* Begin jQuery Mobile Page *}
{jqm_page id="directory-details" class="m-app"}
	{jqm_header title="Directory" back_button="true"}{/jqm_header}

	{jqm_content}
		<h2 class="directory-details" id="directory-details-name" data-firstname="{$user_data->name_first}" data-lastname="{$user_data->name_last}">{$user_data->name_full}</h2>
		{if $user_data->title}
			<h3 class="directory-details" id="directory-details-title">{$user_data->title}</h3>
		{elseif $user_data->major}
			<h3 class="directory-details" id="directory-details-major">{$user_data->major}</h3>
		{/if}
		<ul id="directory-details" data-role="listview" data-inset="true" data-theme="d">
			{if $user_data->dept}
			<li>
				Department:
				<p class="directory-details ui-li-aside" id="directory-details-department">
					{$user_data->dept}
				</p>
			</li>
			{/if}
			{if $user_data->email}
			<li>
				Email:
				<p class="directory-details ui-li-aside" id="directory-details-email">
					<a href="mailto:{$user_data->email}@plymouth.edu">{$user_data->email}@plymouth.edu</a>
				</p>
			</li>
			{/if}
			{if $user_data->phone_office}
			<li>
				Office Phone:
				<p class="directory-details ui-li-aside" id="directory-details-phone-office">
					<a href="tel:{$user_data->phone_office}">{$user_data->phone_office}</a>
				</p>
			</li>
			{elseif $user_data->student_voicemail}
			<li>
				Voicemail:
				<p class="directory-details ui-li-aside" id="directory-details-phone-voicemail">
					<a href="tel:{$user_data->student_voicemail}">{$user_data->student_voicemail}</a>
				</p>
			</li>
			{/if}
			{if $user_data->mailstop}
			<li>
				Mailbox:
				<p class="directory-details ui-li-aside" id="directory-details-mailbox">
					{$user_data->mailstop}
				</p>
			</li>
			{/if}
		</ul>
		<button class="cordova-required" id="add-to-contacts" data-theme="a">
			Add to Contacts
		</button>
	{/jqm_content}

{/jqm_page}
{* End jQuery Mobile Page *}
