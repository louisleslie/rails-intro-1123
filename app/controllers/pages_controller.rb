class PagesController < ApplicationController
    def about
        @members = ["thanh", "dimitri", "germain", "damien", "julien"]
        # @dogs = 
    end
    
    def home
    end
    
    def contact
        @members = ["dimitri","thanh",  "germain", "damien", "julien"]
        # raise
        if params[:member]
            @members = @members.select do |member|
                p member
                p params[:member]
                member.starts_with?(params[:member])
            end
        end
    end
end
