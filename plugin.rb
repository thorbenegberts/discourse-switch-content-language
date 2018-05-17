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
    # we only care when the primary_group_id has changed...
    #next unless primary_group_ids = self.previous_changes["primary_group_id"]
    #byebug
    # ... and only if either is tracked
    #next unless (GroupTracker.tracked_group_ids & primary_group_ids).present?

    #GroupTracker.update_tracking!
  end

end
