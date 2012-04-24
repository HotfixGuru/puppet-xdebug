class xdebug::debian {

    include xdebug::params
    
    package { "xdebug":
        name   => $xdebug::params::pkg,
        ensure => installed,
        require => Class['php'],
    }
    
    augeas { "xdebug php.ini settings":
        context => "${xdebug::params::conf}/xdebug.ini",
        changes => [
        ],
        require => [ 
            Package['xdebug'],
        ],
    }

}