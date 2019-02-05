require 'rails'

#  I18n.t('continents.europe')
module I18n
  module Continent
    module Translations
      class Railtie < ::Rails::Railtie #:nodoc:
        initializer 'i18n-continent-translations' do |app|
          I18n::Continent::Translations::Railtie.instance_eval do
            pattern = pattern_from app.config.i18n.available_locales

            add("rails/locales/#{pattern}.yml")
          end
        end

        protected

        def self.add(pattern)
          files = Dir[File.join(I18n::Continent::Translations.root, pattern)]
          I18n.load_path.concat(files)
        end

        def self.pattern_from(args)
          array = Array(args || [])
          array.blank? ? '*' : "{#{array.join ','}}"
        end
      end
    end
  end
end
