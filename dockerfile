From = node: latest
Maintainer Reinier
ENV node_en=development
ENV port=3000

copy . /var/www
workdir /var/www

run npm install
expose $(port)

entrypoint {"node", "index.js"}