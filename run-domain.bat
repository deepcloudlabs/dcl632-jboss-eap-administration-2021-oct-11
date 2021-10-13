set JAVA_HOME=f:\var\jboss-domain-lab\jdk1.8.0_231
set JBOSS_HOME=f:\var\jboss-domain-lab\jboss-eap-7.4
set PATH=%JAVA_HOME%\bin;%JBOSS_HOME%\bin;%PATH%
set LAB_HOME=f:\var\jboss-domain-lab
start domain.bat --host-config=host-master.xml -Djboss.domain.base.dir=%LAB_HOME%\host0\domain
timeout /t 15
start domain.bat --host-config=host-slave.xml -Djboss.domain.base.dir=%LAB_HOME%\host1\domain
start domain.bat --host-config=host-slave.xml -Djboss.domain.base.dir=%LAB_HOME%\host2\domain
start domain.bat --host-config=host-slave.xml -Djboss.domain.base.dir=%LAB_HOME%\host3\domain
start domain.bat --host-config=host-slave.xml -Djboss.domain.base.dir=%LAB_HOME%\host4\domain
start domain.bat --host-config=host-slave.xml -Djboss.domain.base.dir=%LAB_HOME%\host5\domain
start domain.bat --host-config=host-slave.xml -Djboss.domain.base.dir=%LAB_HOME%\host6\domain
