# Jenkins custom container image
#
# Already bundles some additional plugins that are needed to interface with K8S/OCP
# and other useful features
#
# - Blueocean
# - JaCoCo plugin
# - Nexus3 artifact uploader
# - SonarQube Scanner
# - Kubernetes Plugin / CLI / Pipeline steps
# - Openshift Plugin / Pipeline steps
# - Utility Steps Plugin
FROM quay.io/redhat-developer/origin-jenkins
LABEL MAINTAINER="Andrea Cervesato"

# Upload plugin list and install them
COPY --chown=jenkins:jenkins files/plugins-list /tmp/install-plugins-list.txt
RUN /bin/jenkins-plugin-cli --plugin-file /tmp/install-plugins-list.txt

# Setup CasC plugin directory
# All configuration files (yaml format) must be copied/mounted there
ENV CASC_JENKINS_CONFIG /tmp/casc_files
RUN mkdir -p /tmp/casc_files && chown -R jenkins:jenkins /tmp/casc_files
VOLUME /tmp/casc_files

# Disable first-time configuration wizard, everything should be
# configured with casc manifests
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

