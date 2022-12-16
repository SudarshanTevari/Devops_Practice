pipeline{
    agent any
    stages{
        stage('Bilid'){
            steps{
                node('node1'){
                    sh 'echo "Build stage running on `hostname` server!" '
                }
            }
        }
        stage('Test'){
            steps{
                node('node2'){
                    sh 'echo "Test stage running on `hostname` server!" '
                }
            }
        }
        stage('Deploy'){
            steps{
                node('node1'){
                    sh 'echo "Deploy stage runnind on `hostname` server!" '
                }
            }
        }
    }
}
