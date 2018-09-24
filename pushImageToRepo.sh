#!/bin/bash
FILETOREAD=tempfile.txt
while IFS= read -r line
do
        echo "Pushing $line:latest to Docker Hub..."
        docker push $line:latest
        echo "Successfully pushed Docker Image to docker hub..."
done <"$FILETOREAD"
