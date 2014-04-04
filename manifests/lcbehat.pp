
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

}
