# frozen_string_literal: true

class HomeController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @webhooks = ShopifyAPI::Webhook.find(:all)
  end

  def pincodes
    pincodes = ['400008', '400095']
    render json: {pincodes: pincodes}, status: :ok
  end

  def restricter
    render file: File.join(Rails.root, 'restricter.liquid')
  end

end
