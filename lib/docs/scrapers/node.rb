module Docs
  class Node < UrlScraper
    self.name = 'Node.js'
    self.slug = 'node'
    self.type = 'node'
    self.links = {
      home: 'https://nodejs.org/',
      code: 'https://github.com/nodejs/node'
    }

    html_filters.push 'node/clean_html', 'node/entries', 'title'

    options[:title] = false
    options[:root_title] = 'Node.js'
    options[:container] = '#apicontent'
    options[:skip] = %w(index.html all.html documentation.html synopsis.html)

    options[:attribution] = <<-HTML
      &copy; Joyent, Inc. and other Node contributors<br>
      Licensed under the MIT License.<br>
      Node.js is a trademark of Joyent, Inc. and is used with its permission.<br>
      We are not endorsed by or affiliated with Joyent.
    HTML

    version do
      self.release = '5.5.0'
      self.base_url = 'https://nodejs.org/api/'
    end

    version '4.2 LTS' do
      self.release = '4.2.6'
      self.base_url = "https://nodejs.org/dist/v#{release}/docs/api/"
    end
  end
end
