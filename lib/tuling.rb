require 'httparty'
require 'uri'

class Tuling
  def self.api_check
    puts "#{ENV['tuling123']}"
  end



  private
  def full_url
  	api_key = ENV['tuling123']
  	url = "http://www.tuling123.com/openapi/api?key=#{ENV['tuling123']}&info=#{content}&userid=#{request[:FromUserName]}"
    
  end


  api_key = ENV['tuling123']
      url = "http://www.tuling123.com/openapi/api?key=#{api_key}&info=#{content}&userid=#{request[:FromUserName]}"
      puts "1+#{url}"

      url = URI::escape(url)
      puts "2+#{url}"

      url = URI::parse(url)
      puts "3+ #{url}"
      response = HTTParty.get(url)
      puts "r+#{response}"
      parsed_response = response.parsed_response
      puts "pr: #{parsed_response}"
      puts "code: #{parsed_response['code']}"
      case parsed_response['code']
      when 100000
         content = parsed_response['text']
         request.reply.text "#{content}"
      when 200000
          content = parsed_response['text']
          url = parsed_response['url']
          request.reply.text "#{content} 链接在这：<a href='#{url}'>点我</a>"
      when 302000
          content = parsed_response['text']
          list = parsed_response['list']


          #news = (1..list.length).each_with_object([]) { |n, memo| memo << { title: list.name, content: event.event_detail[0..100] } }
          request.reply.news(list) do |article, item, index| # article is return object
            article.item title: "#{item['article']}", description: "#{item['source']}", pic_url: "#{item['icon']}", url: "#{item['detailurl']}"
          end
      when 308000
          content = parsed_response['text']
          list = parsed_response['list']


          #news = (1..list.length).each_with_object([]) { |n, memo| memo << { title: list.name, content: event.event_detail[0..100] } }
          request.reply.news(list) do |article, item, index| # article is return object
            article.item title: "#{item['name']}", description: "#{item['info']}", pic_url: "#{item['icon']}", url: "#{item['detailurl']}"
          end
      else
        request.reply.text "你说了: #{content}。我不理解你说的内容。请等待管理员更新。" # Just echo
      end
end