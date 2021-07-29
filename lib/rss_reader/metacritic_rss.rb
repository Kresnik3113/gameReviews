require 'rss'
require 'open-uri'

class MetacriticRSS
    def self.metacritic_scores_rss()
        rss_results = []
        rss = RSS::Parser.parse(URI.open('https://www.polygon.com/rss/index.xml').read, false).items[0..1]

        rss.each do |result|



            result = { title: result.title, published: result.published, link: result.link, content: result.content }
            



            rss_results.push(result)
            #puts rss_results
        end
        return rss_results
    end
end