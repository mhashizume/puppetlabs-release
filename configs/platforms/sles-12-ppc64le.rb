platform "sles-12-ppc64le" do |plat|
  plat.servicedir "/usr/lib/systemd/system"
  plat.defaultdir "/etc/sysconfig"
  plat.servicetype "systemd"

  plat.provision_with "zypper -n --no-gpg-checks install -y aaa_base autoconf automake rsync gcc make rpm-build"
  plat.install_build_dependencies_with "zypper -n --no-gpg-checks install -y"
  plat.cross_compiled true
  plat.vmpooler_template "sles-12-x86_64"
end
