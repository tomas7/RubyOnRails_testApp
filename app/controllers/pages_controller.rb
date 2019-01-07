class PagesController < ApplicationController
    def about
        @title = "About us"
        @body = "I am extending my knowledge of Ruby on rails"
    end
end
