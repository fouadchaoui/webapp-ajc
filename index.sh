cd static-website-example
sed -e "s/Dimension/Dimension $1/g" index.html > index.html.tmp
cp -f index.html.tmp index.html
