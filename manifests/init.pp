import 'packages.pp'
import 'config.pp'
import 'services.pp'
import 'define.pp'
import 'user.pp'
import 'repo.pp'
import 'dbconf.pp'

class zarafa (
	$user = 'zarafa',
	$db = 'zarafa',
	$db_user = 'zarafa',
	$db_pass = 'zarafa',
	$user_store = 'db',
	$mta = 'zarafa: zarafa_destination_recipient_limit=1'
) {
	include 'zarafa::packages'
	include 'zarafa::config'
	include 'zarafa::services'

	Class['zarafa::packages'] -> Class['zarafa::config'] -> Class['zarafa::services']
}
