Picciotto.controllers  do
  get :index do
    render 'main/index'
  end

  get :show, :map => "/:permalink" do
    permalink = params[:permalink]
    path = "#{PADRINO_ROOT}/app/views/main/static/#{permalink}.haml"
    not_found if permalink.match(/\.\./) or permalink.match(/\//) or permalink.match(/^layouts$/) or !File.exist?(path)
    render "main/#{permalink}"
  end

  not_found do
    response.status = 404
    render "errors/404"
  end
end
