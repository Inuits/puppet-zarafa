class zarafa::config {
	file {
		'dagent config':
			ensure => present,
			path => '/etc/zarafa/dagent.cfg',
			owner => zarafa,
			group => zarafa,
			mode => 0640,
			content => template('zarafa/dagent.cfg.erb');

		'gateway config':
			ensure => present,
			path => '/etc/zarafa/gateway.cfg',
			owner => zarafa,
			group => zarafa,
			mode => 0640,
			content => template('zarafa/gateway.cfg.erb');

		'ical config':
			ensure => present,
			path => '/etc/zarafa/ical.cfg',
			owner => zarafa,
			group => zarafa,
			mode => 0640,
			content => template('zarafa/ical.cfg.erb');

		'openldap config':
			ensure => present,
			path => '/etc/zarafa/ldap.openldap.cfg',
			owner => zarafa,
			group => zarafa,
			mode => 0640,
			content => template('zarafa/ldap.openldap.cfg.erb');

		'monitor config':
			ensure => present,
			path => '/etc/zarafa/monitor.cfg',
			owner => zarafa,
			group => zarafa,
			mode => 0640,
			content => template('zarafa/monitor.cfg.erb');

		'server config':
			ensure => present,
			path => '/etc/zarafa/server.cfg',
			owner => zarafa,
			group => zarafa,
			mode => 0640,
			content => template('zarafa/server.cfg.erb');

		'spooler config':
			ensure => present,
			path => '/etc/zarafa/spooler.cfg',
			owner => zarafa,
			group => zarafa,
			mode => 0640,
			content => template('zarafa/spooler.cfg.erb');

		'unix config':
			ensure => present,
			path => '/etc/zarafa/unix.cfg',
			owner => zarafa,
			group => zarafa,
			mode => 0640,
			content => template('zarafa/unix.cfg.erb');

	}
}
