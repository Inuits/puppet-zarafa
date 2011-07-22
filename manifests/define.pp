define zarafa_user (
	$name,
	$password,
	$mail,
	$descr
) {
	exec {
		'zarafa add user':
			command => "zarafa-admin -c '$name' -p '$password' -e '$mail' -f '$descr'",
			path => '/bin:/usr/bin:/sbin:/usr/sbin',
	}
}
