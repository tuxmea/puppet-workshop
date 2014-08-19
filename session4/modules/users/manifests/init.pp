class users {
    User {
        ensure => present,
    }
    @user { 'admin01':
        groups => 'admin',
    }
    @user { 'admin02':
        groups => 'admin',
    }
    @user { 'finance':
        groups => 'finance',
    }
    @user { 'mgmt':
        groups => 'mgmt',
    }
}
