#!/bin/bash
#
# Generate a HTML page of the available icons
# Display both the image and the filename

(
for filepath in $(ls -1 ${JENKINS_HOME}/userContent/customIcon/*.png); do
  file=$(basename ${filepath})
  echo "<img title=${file} style=\"width: 32px; height: 32px;\" alt=${file} src=\"/userContent/customIcon/${file}\"/>"
done
) > icons.html

