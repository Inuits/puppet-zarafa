class dbconf {
	mysql_db { 'zarafa db':
		name => "zarafa",
		pass => "$zarafa::dbpass",
		user => "$zarafa::db_user";
	}

	mysql_user { 'zarafa user':
		name => "$zarafa::db_user",
		pass => "$zarafa::db_pass";
	}
}
