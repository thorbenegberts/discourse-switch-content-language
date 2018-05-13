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

end
