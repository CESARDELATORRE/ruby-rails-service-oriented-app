class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def web_app    
  
    render plain: 'OK'

    # (CDLTLL)
    # @authors = ArticlesService.get_authors
    # Return the JSON from the query as plain text
    # render plain: @authors.to_json
  end
end
