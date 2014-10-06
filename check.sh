#!/bin/bash
wget -q --directory-prefix=public_html https://raw.githubusercontent.com/djacobs/tildeclubdavid/master/index.html
X=`diff ~david/public_html/index.html ~david/public_html/index.html.1` 
if [[ $X -ne "" ]]; then
	mv ~david/public_html/index.html.1 ~david/public_html/index.html
else
	rm ~david/public_html/index.html.1
fi
