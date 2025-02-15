project 'puppet7-nightly-release' do |proj|
  proj.description 'Release packages for the Puppet7 nightly repository'
  proj.release '11'
  proj.license 'ASL 2.0'
  proj.version '1.0.0'
  proj.vendor 'Puppet Labs <info@puppetlabs.com>'
  proj.homepage 'https://www.puppet.com'
  proj.target_repo 'puppet7-nightly'
  proj.noarch

  proj.conflicts 'puppet-nightly-release'

  proj.conflicts 'puppet5-nightly-release'
  proj.replaces 'puppet5-nightly-release'

  proj.conflicts 'puppet6-nightly-release'
  proj.replaces 'puppet6-nightly-release'

  proj.setting(:target_repo, 'puppet7-nightly')

  proj.component 'gpg_key'
  proj.component 'repo_definition'
end
