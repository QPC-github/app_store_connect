# frozen_string_literal: true

require 'jwt'
require 'httparty'

require 'app_store_connect/authorization'
require 'app_store_connect/parser'
require 'app_store_connect/client'
require 'app_store_connect/cli'
require 'app_store_connect/bundle_id_create_request'
require 'app_store_connect/user_invitation_create_request'
require 'app_store_connect/version'
require 'app_store_connect/factory'

require 'app_store_connect/type'
require 'app_store_connect/type/enum'

module AppStoreConnect
  module Config
    API = JSON.parse(
      File.read(
        File.join(__dir__, 'config/api.json')
      )
    )
  end

  Parser.parse!(Config::API)
end
