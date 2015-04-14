class HomeController < ApplicationController
  def index
  end

  def generate_pdf
    @images = IMAGES
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'booklet', template: 'home/generate_pdf.html.haml', layout: 'pdf.html.haml', orientation: 'Portrait', page_size: 'A3', disposition: 'inline', encoding: 'UTF-8'
        #pdf = render_to_string layout: 'pdf.html.haml', template: "home/generate_pdf.html.haml", encoding: "UTF-8", orientation: 'Landscape', page_size: 'A4'
        #send_data WickedPdf.new.pdf_from_string(pdf), filename: 'booklet'
      end
    end
  end
end
