# name: switch-content-language
# about: Enables switching language of displayed contents via user groups.
# version: 0.1
# authors: plentymarkets GmbH
# url: https://github.com/plentymarkets/switch-content-language

#require 'cgi'

enabled_site_setting :enable_content_language_switching

after_initialize do

  User.register_custom_field_type('content_language_en', :boolean)
  User.register_custom_field_type('content_language_de', :boolean)

  #add_to_class(Admin::GroupsController) do

  #end

  add_model_callback(User, :after_commit, on: :update) do
    # we only care when the selected languages have changed
    #next unless primary_group_ids = self.previous_changes["primary_group_id"]
    #byebug
    # ... and only if either is tracked
    #next unless (GroupTracker.tracked_group_ids & primary_group_ids).present?


    # TODO only do something if language settings have changed

    # TODO get group ID (or name?) for EN or DE group (or both) from the site settings

    # TODO add or remove user to/grom group(s)

  end

end
