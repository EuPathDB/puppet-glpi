
class glpi::install {

  package { 'glpi':
    ensure => installed,
  }

  file { '/usr/share/glpi/config':
    owner   => $::glpi::owner,
    group   => $::glpi::group,
    mode    => '0750',
    require => Package['glpi'],
  }
}