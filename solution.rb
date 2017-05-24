require "sinatra"

get "/" do
  erb :index
end

post "/response" do
  texto = params[:textoabuela]
  if texto == texto.upcase
    @message = { message: "Ahhh si, manzanas!" }
  else
    @message = { message: "Habla más duro mijito" }
  end
  erb :response
end
