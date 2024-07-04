# This script will install a package

package { 'flask' :
  ensure   => '2.1.0',
  provider => 'pip3',
}

# ensure the Werkzeug package installed

package { 'Werkzeug' :
  ensure   => '2.1.1',
  provider => 'pip3',
}
