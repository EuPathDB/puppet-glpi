# manage some of the configuration files for GLPI
#    /etc/glpi/config_db.php
#    /usr/share/glpi/config/config_path.php
# Ensure least-privileged read permissions on config files.
class glpi::config {

  $dbhost       = $::glpi::dbhost
  $dbuser       = $::glpi::dbuser
  $dbpassword   = $::glpi::dbpassword
  $dbdefault	  = $::glpi::dbdefault

  # config_path.php
  $glpi_config_dir      = $::glpi::glpi_config_dir
  $glpi_doc_dir         = $::glpi::glpi_doc_dir
  $glpi_dump_dir        = $::glpi::glpi_dump_dir
  $glpi_cache_dir       = $::glpi::glpi_cache_dir
  $glpi_cron_dir        = $::glpi::glpi_cron_dir
  $glpi_session_dir     = $::glpi::glpi_session_dir
  $glpi_plugin_doc_dir  = $::glpi::glpi_plugin_doc_dir
  $glpi_lock_dir        = $::glpi::glpi_lock_dir
  $glpi_graph_dir       = $::glpi::glpi_graph_dir
  $glpi_tmp_dir         = $::glpi::glpi_tmp_dir
  $glpi_rss_dir         = $::glpi::glpi_rss_dir
  $glpi_upload_dir      = $::glpi::glpi_upload_dir
  $glpi_log_dir         = $::glpi::glpi_log_dir
  $glpi_picture_dir     = $::glpi::glpi_picture_dir
  $glpi_password_compat = $::glpi::glpi_password_compat

  file { '/etc/glpi/config_db.php':
    content => template('glpi/config_db.php.erb'),
    owner   => $::glpi::writeable_owner,
    group   => $::glpi::group,
    mode    => '0640',
  }

  file { '/usr/share/glpi/config/config_path.php':
    content => template('glpi/config_path.php.erb'),
    owner   => $::glpi::owner,
    group   => $::glpi::group,
    mode    => '0640',
  }

}
