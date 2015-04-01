PDFKit.configure do |config|
  config.default_options[:quiet] = false
  config.wkhtmltopdf = '/usr/bin/wkhtmltopdf'
end
