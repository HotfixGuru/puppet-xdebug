class xdebug::debian {

    include xdebug::params

    package { "xdebug":
        name   => $xdebug::params::pkg,
        ensure => installed,
        require => Package['php5-cli'],
    }

    exec { 'enable_xdebug':
      command => 'php5enmod xdebug && php5enmod -s cli xdebug',
      user => root,
      require => [Package['php5-cli'],
    }

}
