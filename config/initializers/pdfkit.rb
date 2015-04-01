PDFKit.configure do |config|
  config.default_options[:quiet] = false
  config.wkhtmltopdf = '/usr/bin/wkhtmltopdf'
  config.default_options = {
    :page_size     => 'Letter',
    :margin_top    => '0.5in',
    :margin_right  => '0.25in',
    :margin_bottom => '0.5in',
    :margin_left   => '0.25in'
  }
end
