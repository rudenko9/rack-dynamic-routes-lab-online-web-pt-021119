class Application
  @@items = []
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/item/)
      @@items.each do |item|
      resp.write "#{item.price}"
    end 
    elsif
      resp.write  "Item not found"
      resp.status = 400
    else
      resp.write "Route not found"
      resp.status = 404
    end 
    resp.finish
  end
  
end 