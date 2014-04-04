
#lcphp repo - https://github.com/rbayliss/puppet-lcphp
class lcbehat::lcbehat() {

  include composer

  composer::exec { 'behat-install':
    cmd  => 'install',
    cwd  => '/vagrant/modules/lcbehat',
    logoutput => true,
    require => Class ["lcphp"],
  }
  package { 'default-jre':
    ensure => "installed",
  }
  file_line { 'sauce_username':
    line => "export SAUCE_USERNAME=${sauce_username}",
    path => '/home/vagrant/.bashrc',
  }
  file_line { 'sauce_access_key':
    line => "export SAUCE_ACCESS_KEY=${sauce_access_key}",
    path => '/home/vagrant/.bashrc',
  }
}
