pipeline{
    agent any
    stages{
        stage('Bilid'){
            steps{
                node('node1'){
                    sh 'echo "Build stage running on `hostname`" '
                }
            }
        }
        stage('Test'){
            steps{
                node('node1'){
                    sh 'echo "Test stage running on `hostname`" '
                }
            }
        }
        stage('Deploy'){
            steps{
                node('node1'){
                    sh 'echo "Deploy stage runnind on `hostname`" '
                }
            }
        }
    }
}
