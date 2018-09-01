# class Application
#   def call(env)
#     resp = Rack::Response.new
#     now = Time.now
#     nowHr = now.hour
#     if nowHr < 12 && nowHr >= 5
#       resp.write "Good Morning"
#     elsif nowHr >= 12 && nowHr < 17
#       resp.write "Good Afternoon"
#     end
#     resp.finish
#   end
# end

class Application

  @@items = ["Apples","Carrots","Pears"]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@items.each do |item|
      resp.write "#{item}\n"
    end

    resp.finish
  end
end
