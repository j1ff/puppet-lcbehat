
class lcbehat::lcbehat() {

  include composer

  composer::exec { 'behat-install':
    cmd  => 'install',  # REQUIRED
    cwd  => '/vagrant/modules/lcbehat', # REQUIRED
  }
  package { 'default-jre':
    ensure => "installed",
  }

}
