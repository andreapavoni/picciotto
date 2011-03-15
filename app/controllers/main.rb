Picciotto.controllers  do
  get :index do
    render 'main/index'
  end

  get :show, :map => "/:permalink" do
    permalink = params[:permalink]
    path = "#{PADRINO_ROOT}/app/views/main/static/#{permalink}.haml"
    halt 404 if permalink.match(/\.\./) or permalink.match(/\//) or permalink.match(/^layouts$/) or !File.exist?(path)
    render "main/static/#{permalink}"
  end
end
