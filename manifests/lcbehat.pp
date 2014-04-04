
class lcbehat::lcbehat() {

  include composer

  composer::exec { 'behat-install':
    cmd  => 'install',
    cwd  => '/vagrant/modules/lcbehat',
  }
  package { 'default-jre':
    ensure => "installed",
  }

}
