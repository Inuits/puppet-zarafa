class zarafa::services {
	service {
		'zarafa-dagent':
			ensure => running,
			enable => true;
			
		'zarafa-gateway':
			ensure => running,
			enable => true;

		'zarafa-ical':
			ensure => running,
			enable => true;
			
		'zarafa-monitor':
			ensure => running,
			enable => true;
			
		'zarafa-server':
			ensure => running,
			enable => true;
			
		'zarafa-spooler':
			ensure => running,
			enable => true;
	}
}
