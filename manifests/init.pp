class asenna {	
	$paketit = [ "apache2", "libapache2-mod-php7.0", "php7.0","gedit","tree","ssh","curl"
		, ]
	package {$paketit: 
		ensure=>"installed",
		allowcdrom => "true" }
	file { "/var/www/html/index.php":
		content=> template ("asenna/index.html")
	     }
	file { "/etc/puppet/manifests/site.pp":
		content => template ("asenna/site.pp")
		}
	exec {puppetmodule-apache2:
		command => "sudo puppet module install puppetlabs-apache",
		path => "/bin:/usr/bin:/sbin:/usr/sbin:" }
	exec {puppetmodule-mysql: 
                command => "sudo puppet module install puppetlabs-mysql",
		path => "/bin:/usr/bin:/sbin:/usr/sbin:"
		}
	file { "/etc/apache2/mods-available/php7.0.conf":
		content => template ('asenna/php7.0.conf') 
	   }
	file { '/etc/skel/public_html' :ensure => 'directory', }
	file { "/etc/skel/public_html/index.php":
		content => template ("asenna/index.html")}
}
