import 'packages.pp'
import 'config.pp'
import 'services.pp'
import 'define.pp'

class zarafa (
	$user = 'zarafa',
	$mta = 'zarafa: zarafa_destination_recipient_limit=1'
) {
	include 'zarafa::packages'
	include 'zarafa::config'
	include 'zarafa::services'

	Class['zarafa::packages'] -> Class['zarafa::config'] -> Class['zarafa::services']
}
