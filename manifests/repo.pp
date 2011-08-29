class zarafa::repo {
	case $operatingsystem {
		'Debian': {realize(Aptrepo['zarafa'])}
		'Centos': { if $operatingsystemrelease == '6.0' {
			realize(Yumrepo['epel6'])
		} else {
			realize(Yumrepo['epel'])
		}}
	}
}
