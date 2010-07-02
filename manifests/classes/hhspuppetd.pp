# /etc/puppet/manifests/classes/hhspuppetd.pp

class hhs_puppetd {

	file { "/usr/bin/puppetd.sh":
		owner => "root",
		group => "wheel",
		mode => 755,
		source => "puppet:///files/hhspuppetd.sh",
	}
	file { "/usr/bin/puppetd.rb":
		owner => root,
		group => wheel,
		mode => 755,
		source => "puppet:///files/puppetd.rb",
	}
}
