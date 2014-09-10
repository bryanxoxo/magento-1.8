run "if [ -f #{config.shared_path}/config/local.xml ] ; then ln -nfs #{config.shared_path}/config/local.xml #{config.release_path}/app/etc/local.xml ; fi"
