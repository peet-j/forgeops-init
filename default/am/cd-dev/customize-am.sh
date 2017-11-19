#!/usr/bin/env bash
# This is a placeholder that you can replace with your own script to copy in assets such as images
# or a web.xml file.
# Some Environment variables that are available:
# CATALINA_HOME: The expanded openam war file is in $CATALINA_HOME/webapps/openam
# OPENAM_HOME
# DOMAIN: The cookie domain (includes leading .)
# NAMESPACE: The Kubernetes namespace
echo "AM customization script"

echo "Customizing the AM web application"
echo ""

echo "Available environment variables:"
echo ""
env
echo ""

# Copy the custom authN module ZeroPageUsernameSharedNode WAR file that is in the same directory as this script to the
# webapps/openam/WEB-INF/lib directory
cp /git/forgeops-init/default/am/cd-dev/zeropageusernameshared-node-5.5.0.jar ${CATALINA_HOME}/webapps/openam/WEB-INF/lib

echo "Finished copying the custom authentication module jar file"
echo ""
echo "Finished customizing the AM web application"


