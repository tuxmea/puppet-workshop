class ssh::config {
    @@sshkey { $::fqdn:
        ensure       => present,
        type         => 'rsa',
        name         => $::fqdn,
        host_aliases => $::hostname,
        key          => $::ssh_rsa_key,
    }
    Sshkey <<| |>>

}
