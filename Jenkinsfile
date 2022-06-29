
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Build an image for scanning
                sh 'docker build --no-cache -t test/prismascan .'
            }
        }
        stage('Scan') {
            steps {
                // Scan the image
                prismaCloudScanImage ca: '', 
                cert: '', 
                dockerAddress: 'unix:///var/run/docker.sock',
                 image: 'python:3.7-alpine', 
                 key: '', logLevel: 'info',
                  podmanPath: '', project: '', 
                  resultsFile: 'prisma-cloud-scan-results.json',
                ignoreImageBuildTime:true
            }
        }
    }
    post {
        always {
            // The post section lets you run the publish step regardless of the scan results
            prismaCloudPublish resultsFilePattern: 'prisma-cloud-scan-results.json'
        }
    }
}