class sssh::params {
    # add missing stuff
    case $::operatingsystem {
        'centos': {
        }
        'debian': {
        }
        default: {
            fail("This operatingsystem: ${::operatingsystem} is not supported.")
        }
    }
}
