require 'squishy'

module Jekyll
  class Site
    alias jekyll_process process

    def process
      jekyll_process
      config = self.config['squishy']
      if !config or (config and !config['disabled'])
        Squishy.squish(self.dest)
      end
    end
  end
end
