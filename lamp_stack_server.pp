package { 'apache2':
  ensure => installed,
}

package { 'php':
  ensure  => installed,
  require => Package['apache2'],
}

package { 'libapache2-mod-php':
  ensure  => installed,
  require => Package['apache2'],
}

package { 'php-cli':
  ensure => installed,
}

package { 'php-mysql':
  ensure => installed,
}

service { 'apache2':
  ensure  => running,
  enable  => true,
  require => [Package['apache2'], Package['php']],
}

file { '/var/www/html/phpinfo.php':
  ensure  => file,
  content => "<?php phpinfo(); ?>",
  require => Package['apache2'],
  notify  => Service['apache2'],
}

package { 'mariadb-server':
  ensure => installed,
}

service { 'mysql':
  ensure => running,
  enable => true,
  require => Package['mariadb-server'],
}
