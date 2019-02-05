require "i18n/continent/translations/version"
require "i18n/continent/translations/railtie"

# I18n::Continent::Translations.root
module I18n
  module Continent
    module Translations
      def self.root
        File.expand_path('../../..', __FILE__)
      end
    end
  end
end
