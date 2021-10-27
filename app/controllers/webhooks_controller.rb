class WebhooksController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def receive
    if request.headers['Content-Type'] == 'application/json'
      data = JSON.parse(request.body.read)
    else
      data = params.as_json
    end

    Webhook::Received.save(data: data, webhook: params[:webhook_name])

    render nothing: true
  end
end