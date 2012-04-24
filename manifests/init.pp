class xdebug {
    case $operatingsystem {
        Debian,Ubuntu:  { include xdebug::debian}
        default: { fail "Unsupported operatingsystem ${operatingsystem}" }
    }
}