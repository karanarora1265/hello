class WelcomeController < ApplicationController
	def index
		respond_to do |format|
            format.html
            format.pdf do
                render pdf: "Hello",
                page_size: 'A4',
                template: "welcome/show.html.erb",
                layout: "pdf.html",
                orientation: "Landscape",
                lowquality: true,
                zoom: 1,
                dpi: 75
            end
        end		
	end
end
