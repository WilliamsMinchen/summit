tomcat-install:
  file.managed:
    - name: C:\tomcat
    - source: salt://apache-tomcat-7.069.zip
  cmd.run:
    - name: cd C:\ && tar zxf apache-tomcat-8.0.30.tar.gz && mv apache-tomcat-8.0.30 /usr/local/tomcat && chown -R root:root /usr/local/tomcat 
tomcat-config:
  file.append:
    - name: /etc/profile
    - text:
      - export TOMCAT_HOME=/usr/local/tomcat