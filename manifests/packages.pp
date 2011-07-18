class zarafa::packages {
	package {
		'zarafa':
			ensure => present,
			name => $operatingsystem ? {
				'Centos' => 'zarafa',
				'Debian' => 'zarafa-meta',
			},
	}
}
