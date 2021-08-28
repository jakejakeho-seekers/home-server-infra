 node('jenkins-slave') {
     stage('update jenkins') {
        withKubeConfig([credentialsId: 'kubernetes-config']) {  
            sh 'curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"'  
            sh 'chmod u+x ./kubectl'  
            sh './kubectl -n jenkins apply -f ./jenkins/'  
        }  
    }
}
 
 