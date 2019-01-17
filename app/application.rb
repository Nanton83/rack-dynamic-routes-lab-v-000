class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  end 
end

1. class Application
2.  
3. def call(env)
4. resp = Rack::Response.new
5. req = Rack::Request.new(env)
6.  
7. if req.path=="/songs"
8. resp.write "You requested the songs"
9. else
10. resp.write "Route not found"
11. resp.status = 404
12. end
13.  
14. resp.finish
15. end
end