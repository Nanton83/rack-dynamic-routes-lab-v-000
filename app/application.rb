class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/item"
      resp.write "You requested the item"
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end

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
