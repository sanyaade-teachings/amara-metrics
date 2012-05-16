class base {
  group { "puppet": ensure => "present"; }  ->

  class { "aptitude": } ->
  package { "openjdk-6-jre": ensure => "present", } ->
  class { "riemann": }

  package { "curl": ensure => "present", }
  package { "git-core": ensure => "installed", }
  package { "vim": ensure => "installed", }
}
