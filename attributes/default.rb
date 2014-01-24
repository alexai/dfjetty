default['dfjetty']['user']="jetty"
default['dfjetty']['port']="6050"
default['dfjetty']['java_opts']=" -server -Xms1024m -Xmx8192m -XX:+DisableExplicitGC -XX:PermSize=64M -XX:MaxPermSize=512M -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.port=1099 -Dorg.jboss.logging.provider=slf4j"
default['dfjetty']['artifactory_repo']="libs-snapshot-local"
default['dfjetty']['artifactory_path']="com/demandforce/3rdparty/jetty/8.1.7-SNAPSHOT"
default['dfjetty']['rpm_name']="jetty-8.1.7-20121023.013523-3.rpm"
default['dfjetty']['rpm_version']="jetty-8.1.7-20121023.013523-3"
default['nfs']['gid']="5000"



