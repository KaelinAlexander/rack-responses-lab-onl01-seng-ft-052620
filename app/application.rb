require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    binding.pry

    if time.now < 12:00:00
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
