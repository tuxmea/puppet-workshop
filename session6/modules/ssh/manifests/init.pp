class ssh (
    $pkgname      = $ssh_hiera::params::pkgname,
    $srvname      = $ssh_hiera::params::srvname,
    $cfgname      = $ssh_hiera::params::cfgname,
    $allow_root   = true,
    $allow_passwd = true
) inherits ssh_hiera::params {
    validate_bool($allow_root, $allow_passwd)
    validate_absolutepath($cfgname)
    validate_string($pkgname, $srvname)

}
