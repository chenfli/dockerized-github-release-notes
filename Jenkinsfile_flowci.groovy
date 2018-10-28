podTemplate(label: 'jenkins-pipeline', containers: [
    containerTemplate(name: 'docker', image: 'docker:17.07-rc', privileged: true, command: 'cat', ttyEnabled: true)
], 
volumes:[
    hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock')
]) {
def name='flowci'
@Library('flowci') _
io.k8s.flow.FlowPipeline.builder(this, name, steps)
        .buildDefaultPipeline()
        .execute()
}
