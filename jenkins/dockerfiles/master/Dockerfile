FROM jenkins/jenkins:lts-jdk11
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home_config/casc.yaml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
COPY casc.yaml /var/jenkins_home_config/casc.yaml
COPY /home/jake/.minikube/profiles/minikube/client.crt /home/jake/.minikube/profiles/minikube/client.crt
COPY /home/jake/.minikube/profiles/minikube/client.key /home/jake/.minikube/profiles/minikube/client.key 
COPY /home/jake/.minikube/ca.crt /home/jake/.minikube/ca.crt