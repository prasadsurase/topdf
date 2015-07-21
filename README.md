# topdf
This is a sample repository to demonstrate how to convert an html page that renders images from Facebook CDN to pdf using wkhtmltopdf and wicked_pdf. Do checkout to the 'wicked_pdf' branch to see a working demo.
Do not use wkhtmltopdf-binary gem not do install wkhtmltopdf using 'apt-get install' since it installs a older version.
Instead, install it using the steps defined below. Execute 'whereis wkhtmltopdf' and copy the path to the wicked_pdf initializer file as "exe_path: '/usr/local/bin/wkhtmltopdf'"

Installing wkhtmltopdf:

1) install xfonts using "sudo apt-get install xfonts-75dpi"
2) Download the stable deb file from http://wkhtmltopdf.org/downloads.html
3) Install the  deb file. eg: "sudo dpkg -i /home/prasads/Downloads/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb"

Clone at '~/', bundle and run.
