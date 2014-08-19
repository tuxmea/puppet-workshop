class ssh:hiera (
    $pkgname      = hiera('ssh_hiera::pkgname', $ssh_hiera::params::pkgname),
    $srvname      = hiera('ssh_hiera::srvname', $ssh_hiera::params::srvname),
    $cfgname      = hiera('ssh_hiera::cfgname', $ssh_hiera::params::cfgname),
    $allow_root   = hiera('ssh_hiera::allow_root', true),
    $allow_passwd = hiera('ssh_hiera::allow_passwd', true)
) inherits ssh_hiera::params {
    validate_bool($allow_root, $allow_passwd)
    validate_absolutepath($cfgname)
    validate_string($pkgname, $srvname)

}
