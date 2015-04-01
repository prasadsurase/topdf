class HomeController < ApplicationController
  def index
  end

  def generate_pdf
    @images = IMAGES
    respond_to do |format|
      format.html
      format.pdf do
        html = render_to_string(layout: true , action: "generate_pdf.html.haml")
        kit = PDFKit.new(html, page_size: 'A4', print_media_type: true)
        pdf = kit.to_pdf
        send_data pdf, filename: 'booklet.pdf', type: 'application/pdf', disposition: 'inline'
      end
    end
  end
end
