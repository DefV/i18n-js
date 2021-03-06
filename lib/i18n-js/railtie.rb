module SimplesIdeias
  module I18n
    class Railtie < Rails::Railtie
      rake_tasks do
        load File.dirname(__FILE__) + "/../tasks/i18n-js_tasks.rake"
      end
      
      # Used for development
      config.to_prepare do
        SimplesIdeias::I18n.export!
      end
      
      # Used for production
      config.after_initialize do
         SimplesIdeias::I18n.export!
       end
    end
  end
end
