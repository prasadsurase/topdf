# topdf
A sample repository to check as to how to load images from Facebook CDN in pdf using pdfkit/wicked_pdf. Have created to demo the stack overflow question http://stackoverflow.com/questions/29436295/pdfkit-css-stylesheets-not-being-applied

Do not use wkhtmltopdf-binary gem. Instead install it using 'sudo apt-get install wkhtmltopdf'. Create a file 'config/initializers/pdfkit.rb' and add
"config.wkhtmltopdf = '/usr/bin/wkhtmltopdf'" to the "PDFKit.configure" block.

Clone at '~/', bundle and run.


