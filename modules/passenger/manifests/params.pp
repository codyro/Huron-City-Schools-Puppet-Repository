# Class: passenger::params
#
# This class manages parameters for the Passenger module
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class passenger::params {
  $version='2.2.9'
  
  case $operatingsystem {
    'ubuntu', 'debian': {
      $gem_path = '/var/lib/gems/1.8/gems/'
      $gem_binary_path = '/var/lib/gems/1.8/bin'
      $mod_passenger_location = "/var/lib/gems/1.8/gems/passenger-$version/ext/apache2/mod_passenger.so"
    }
    'centos', 'fedora', 'redhat': {
      $gem_path = '/usr/lib/ruby/gems/1.8/gems'
      $gem_binary_path = '/usr/lib/ruby/gems/1.8/gems/bin'
      $mod_passenger_location = "/usr/lib/ruby/gems/1.8/gems/passenger-$version/ext/apache2/mod_passenger.so"
    }
	'darwin':{
	  $gem_path = '/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin'
	  $gem_binary_path = '/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin'
	  $mod_passenger_location = "/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/passenger-$version/ext/apache2/mod_passenger.so"
	}
  }
}
