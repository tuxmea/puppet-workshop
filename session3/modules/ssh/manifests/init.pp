class ssh (
    $pkgname = $ssh::params::pkgname,
    $srvname = $ssh::params::srvname,
    $cfgname = $ssh::params::cfgname,
    $allow_root = true,
    $alow_passwd = true
) inherits ssh::params {
    validate_bool($allow_root, $allow_passwd)
    validate_absolutepath($cfgname)
    validate_string($pkgname, $srvname)

}
