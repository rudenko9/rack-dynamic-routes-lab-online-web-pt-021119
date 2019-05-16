class Application
  @@item = []
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path=="/item"
      resp.write "item price"
      
    else 
      resp.write  "Item not found"
      resp.write "Route not found"
      resp.status = 400
    end 
    resp.finish
  end
  
end 