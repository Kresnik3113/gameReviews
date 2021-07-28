require 'rss'
require 'open-uri'

class GameNewsRSS
    def self.game_news_rss()
        rss_results = []
        rss = RSS::Parser.parse(URI.open('https://www.gamespot.com/feeds/game-news').read, false).items[0..5]

        rss.each do |result|

            #result.description = result.description.split(';')
            result.description = result.description.gsub(';', '<br/>').html_safe 

           puts result.description

            result = { title: result.title, date: result.pubDate, link: result.link, description: result.description }
            
           # result = {​​ title: result.title, link: result.link, description: result.description, date: result.pubDate }​​


            rss_results.push(result)
            #puts rss_results
        end
        return rss_results
    end
end