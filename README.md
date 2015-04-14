# topdf
A sample repository to check as to how to load images from Facebook CDN in pdf using pdfkit/wicked_pdf. Have created to demo the stack overflow question http://stackoverflow.com/questions/29436295/pdfkit-css-stylesheets-not-being-applied

Do not use wkhtmltopdf-binary gem. Instead install it using 'sudo apt-get install wkhtmltopdf'. Create a file 'config/initializers/pdfkit.rb' and add
"config.wkhtmltopdf = '/usr/bin/wkhtmltopdf'" to the "PDFKit.configure" block.

Installing wkhtmltopdf:

1) install xfonts using "sudo apt-get install xfonts-75dpi"
2) install "sudo dpkg -i /home/prasads/Downloads/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb"

Clone at '~/', bundle and run.

