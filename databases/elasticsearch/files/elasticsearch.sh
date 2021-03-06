#! @RCD_SCRIPTS_SHELL@
#
# $NetBSD: elasticsearch.sh,v 1.1 2014/04/16 17:22:14 imil Exp $
#
# PROVIDE: elasticsearch
# REQUIRE: DAEMON
#

. /etc/rc.subr

name="elasticsearch"
rcvar=$name
pidfile="@ES_PIDDIR@/elasticsearch.pid"
required_files="@PKG_SYSCONFDIR@/elasticsearch.yml"
start_precmd="elasticsearch_precmd"

: ${elasticsearch_user:=@ES_USER@}
: ${elasticsearch_group:=@ES_GROUP@}
: ${elasticsearch_config:="@PKG_SYSCONFDIR@/elasticsearch.yml"}
: ${elasticsearch_min_mem:="256m"}
: ${elasticsearch_max_mem:="1g"}
: ${elasticsearch_props:=""}

ES_CLASSPATH="@ES_LIBDIR@/@DISTNAME@.jar:@ES_LIBDIR@/*"

command="@PKG_JAVA_HOME@/bin/java"
# flags taken from bin/elasticsearch and bin/elasticsearch.in.sh
command_args="	-Delasticsearch					\
		-Des.pidfile=${pidfile}				\
		-Des.config=${elasticsearch_config}		\
		-Xms${elasticsearch_min_mem}			\
		-Xmx${elasticsearch_max_mem}			\
		-Xss256k					\
		-Djava.awt.headless=true			\
		-XX:+UseParNewGC				\
		-XX:+UseConcMarkSweepGC				\
		-XX:CMSInitiatingOccupancyFraction=75		\
		-XX:+UseCMSInitiatingOccupancyOnly		\
		-XX:+HeapDumpOnOutOfMemoryError			\
		-XX:+UseCMSInitiatingOccupancyOnly		\
		-cp ${ES_CLASSPATH}				\
		${elasticsearch_props}				\
		org.elasticsearch.bootstrap.Elasticsearch	\
		>/dev/null &"

elasticsearch_precmd()
{
	@TOUCH@ ${pidfile}
	@CHOWN@ ${elasticsearch_user}:${elasticsearch_group} ${pidfile}
}

load_rc_config "$name"
run_rc_command "$1"
