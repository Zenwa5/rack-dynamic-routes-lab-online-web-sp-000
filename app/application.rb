class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/<ITEM NAME>"
      resp.write "price"
    else
     resp.status = 400
     resp.write "Route not found"

   end
 end

   resp.finish


end
