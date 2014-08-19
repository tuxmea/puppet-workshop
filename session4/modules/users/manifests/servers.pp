class users::servers {
    include users
    User <| groups == 'admins' |>
}
