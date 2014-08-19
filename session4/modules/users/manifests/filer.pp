class users::filer {
    include users
    User <| groups == 'admins' and groups == 'finance' and groups == 'mgmt' |>
}
