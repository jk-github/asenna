class asenna {	
	$paketit = [ "apache2", "libapache2-mod-php7.0", "php7.0","gedit","tree","ssh","curl", ]
	package {$paketit: ensure=>"installed", allowcdrom => "true" }
	file { "/var/www/html/index.php":
		content=> template ("asenna/index.html")
	     }	
	file { "/etc/apache2/mods-available/php7.0.conf":
		content => template ('asenna/php7.0.conf') 
	     }
	service {'apache2':
                ensure => 'running'}
	file { '/etc/skel/public_html' :ensure => 'directory', }
	file { "/etc/skel/public_html/index.php":
		content => template ("asenna/index.html")}
}
