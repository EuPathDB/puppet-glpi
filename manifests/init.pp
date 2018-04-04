# main glpi manifest
class glpi (
  $dbhost          = undef,
  $dbuser          = undef,
  $dbpassword      = undef,
  $dbdefault       = undef,
  $owner           = 'root',
  $writeable_owner = 'apache',
  $group           = 'apache',

  # config_path.php
  $glpi_config_dir      = '/etc/glpi',
  $glpi_doc_dir         = '/var/lib/glpi/files',
  $glpi_dump_dir        = '/var/lib/glpi/files/_dumps',
  $glpi_cache_dir       = '/var/lib/glpi/files/_cache/',
  $glpi_cron_dir        = '/var/lib/glpi/files/_cron',
  $glpi_session_dir     = '/var/lib/glpi/files/_sessions',
  $glpi_plugin_doc_dir  = '/var/lib/glpi/files/_plugins',
  $glpi_lock_dir        = '/var/lib/glpi/files/_lock/',
  $glpi_graph_dir       = '/var/lib/glpi/files/_graphs/',
  $glpi_tmp_dir         = '/var/lib/glpi/files/_tmp/',
  $glpi_rss_dir         = '/var/lib/glpi/files/_rss/',
  $glpi_upload_dir      = '/var/lib/glpi/files/_uploads/',
  $glpi_log_dir         = '/var/log/glpi',
  $glpi_picture_dir     = '/var/lib/glpi/files/_pictures',
  $glpi_password_compat = '/usr/share/php/password_compat/',
) {

  include ::glpi::install
  include ::glpi::config

  Class['::glpi::install'] ->
  Class['::glpi::config']

}
