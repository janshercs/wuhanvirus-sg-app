class ShortenerController < ApplicationController
  def show
    token = ::Shortener::ShortenedUrl.extract_token(params[:id])
    url   = ::Shortener::ShortenedUrl.fetch_with_token(token: token, additional_params: params)

    ahoy.track "Viewed Article", token

    redirect_to url[:url], status: :moved_permanently
  end
end
