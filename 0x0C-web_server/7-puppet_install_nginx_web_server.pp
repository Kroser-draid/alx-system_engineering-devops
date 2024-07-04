# update all packages

package { 'update-all-packages' :
  ensure => 'latest',
}

# install nginx

exec { 'install_nginx' :
  command => 'apt-get -y install nginx',
  creates => '/etc/nginx/nginx.conf',
  path    => '/usr/bin',
}

# create the index page

exec { 'create_index' :
  command => 'bash -c "echo 'Hello World!' > /var/www/html/index.html"',
  path    => ['/usr/bin', '/bin'],
}

# redirection configuration

file { '/etc/nginx/sites-available/default':
  content => 'server {
    listen 80;
    server_name _;

    location /redirect_me {
	return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }

    location / {
	root /var/www/html;
	index index.html;
    }
}',
  mode    => '0644',
  owner   => 'root',
  group   => 'root',
  require => File['/var/www/html/index.html'],
}
