# 2-puppet_custom_http_response_header.pp

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx with custom HTTP header
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('path/to/your/template.erb'), # Use an ERB template to generate Nginx configuration
  notify  => Service['nginx'],
}

# Create a template file for Nginx configuration
file { 'nginx_config_template':
  path    => 'path/to/your/template.erb',
  ensure  => file,
  content => template('path/to/your/nginx_config.erb'),
}

# Ensure the Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
}
