FROM jenkins/jenkins:lts
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home_config/casc.yaml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY casc.yaml /var/jenkins_home_config/casc.yaml
COPY client.crt /var/jenkins_home_config/.minikube/profiles/minikube/client.crt
COPY client.key /var/jenkins_home_config/profiles/minikube/client.key 
COPY ca.crt /var/jenkins_home_config/.minikube/ca.crt