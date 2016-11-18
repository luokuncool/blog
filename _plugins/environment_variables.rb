module Jekyll

  class EnvironmentVariablesGenerator < Generator

    def generate(site)
      site.config['env'] = 'production'
    end

  end

end