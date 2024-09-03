class AuthorsController < ApplicationController
    def index
      # (CDLTLL)
      @authors = ArticlesService.get_authors
      @developer = "Cesar de la Torre"
    end
  end