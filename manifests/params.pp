class xdebug::params {

    $pkg = $operatingsystem ? {
        /Debian|Ubuntu/ => 'php5-xdebug',
    }
    
    #Note: xdebug does not macke much sense without php installed 
    $php = $operatingsystem ? {
        /Debian|Ubuntu/ => 'php5-cli',
    }
}