class HomeController < ApplicationController
  def index
  end

  def generate_pdf
    @images = IMAGES
    respond_to do |format|
      format.html
      format.pdf do
        html = render_to_string(layout: true , action: "generate_pdf.html.haml")
        kit = PDFKit.new(html, page_size: 'A4', orientation: 'Landscape' )
        `sass vendor/assets/stylesheets/bootstrap.scss tmp/bootstrap.css`
        `sass vendor/assets/stylesheets/custom.scss tmp/custom.css`
        kit.stylesheets << "#{Rails.root}/tmp/bootstrap.css"
        kit.stylesheets << "#{Rails.root}/tmp/custom.css"
        pdf = kit.to_pdf
        send_data pdf, filename: 'booklet.pdf', type: 'application/pdf'
      end
    end
  end
end
