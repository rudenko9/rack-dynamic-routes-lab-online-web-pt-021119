class Application
 # @@item = []
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path=="/item"
      resp.write "item price"
    else 
      resp.status = 404
    end 
    resp.finish
  end
  
end 