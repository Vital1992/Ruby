pod_details = {"apiVersion"=>"v1", "items"=>[{"apiVersion"=>"v1", "kind"=>"Pod", "metadata"=>{"annotations"=>{"k8s.v1.cni.cncf.io/networks-status"=>"", "openshift.io/deployment-config.name"=>"stim-0", "openshift.io/deployment.name"=>"stim-0-1", "openshift.io/scc"=>"restricted"}, "creationTimestamp"=>"2020-06-19T01:43:15Z", "labels"=>{"openshift.io/deployer-pod-for.name"=>"stim-0-1"}, "name"=>"stim-0-1-deploy", "namespace"=>"2020-06-19-01-43-01-vcherkasov-10-4-12-32", "ownerReferences"=>[{"apiVersion"=>"v1", "kind"=>"ReplicationController", "name"=>"stim-0-1", "uid"=>"bbafad91-5b71-45ad-8db9-bb86cd84dc66"}], "resourceVersion"=>"61298517", "selfLink"=>"/api/v1/namespaces/2020-06-19-01-43-01-vcherkasov-10-4-12-32/pods/stim-0-1-deploy", "uid"=>"651376df-00dc-4b65-9742-a85ea89b34d8"}, "spec"=>{"activeDeadlineSeconds"=>21600, "containers"=>[{"env"=>[{"name"=>"OPENSHIFT_DEPLOYMENT_NAME", "value"=>"stim-0-1"}, {"name"=>"OPENSHIFT_DEPLOYMENT_NAMESPACE", "value"=>"2020-06-19-01-43-01-vcherkasov-10-4-12-32"}], "image"=>"quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256:4b8bb88e6f66aad85763a0438b7a7866d8f4469b6e535a2b1b7d0878fafe369e", "imagePullPolicy"=>"IfNotPresent", "name"=>"deployment", "resources"=>{}, "securityContext"=>{"capabilities"=>{"drop"=>["KILL", "MKNOD", "SETGID", "SETUID"]}, "runAsUser"=>1004360000}, "terminationMessagePath"=>"/dev/termination-log", "terminationMessagePolicy"=>"File", "volumeMounts"=>[{"mountPath"=>"/var/run/secrets/kubernetes.io/serviceaccount", "name"=>"deployer-token-ql7vk", "readOnly"=>true}]}], "dnsPolicy"=>"ClusterFirst", "enableServiceLinks"=>true, "imagePullSecrets"=>[{"name"=>"deployer-dockercfg-9sq2d"}], "nodeName"=>"seaocp4dev01inf01.ocp4dev01.meteorcomm.lan", "priority"=>0, "restartPolicy"=>"Never", "schedulerName"=>"default-scheduler", "securityContext"=>{"fsGroup"=>1004360000, "seLinuxOptions"=>{"level"=>"s0:c66,c35"}}, "serviceAccount"=>"deployer", "serviceAccountName"=>"deployer", "shareProcessNamespace"=>false, "terminationGracePeriodSeconds"=>10, "tolerations"=>[{"effect"=>"NoExecute", "key"=>"node.kubernetes.io/not-ready", "operator"=>"Exists", "tolerationSeconds"=>300}, {"effect"=>"NoExecute", "key"=>"node.kubernetes.io/unreachable", "operator"=>"Exists", "tolerationSeconds"=>300}], "volumes"=>[{"name"=>"deployer-token-ql7vk", "secret"=>{"defaultMode"=>420, "secretName"=>"deployer-token-ql7vk"}}]}, "status"=>{"conditions"=>[{"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:15Z", "reason"=>"PodCompleted", "status"=>"True", "type"=>"Initialized"}, {"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:21Z", "reason"=>"PodCompleted", "status"=>"False", "type"=>"Ready"}, {"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:21Z", "reason"=>"PodCompleted", "status"=>"False", "type"=>"ContainersReady"}, {"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:15Z", "status"=>"True", "type"=>"PodScheduled"}], "containerStatuses"=>[{"containerID"=>"cri-o://0dd3d4df0d69dd05b654f24b67562d0ae0b1fc6116d0ccb18aee564267c16c0e", "image"=>"quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256:4b8bb88e6f66aad85763a0438b7a7866d8f4469b6e535a2b1b7d0878fafe369e", "imageID"=>"quay.io/openshift-release-dev/ocp-v4.0-art-dev@sha256:4b8bb88e6f66aad85763a0438b7a7866d8f4469b6e535a2b1b7d0878fafe369e", "lastState"=>{}, "name"=>"deployment", "ready"=>false, "restartCount"=>0, "started"=>false, "state"=>{"terminated"=>{"containerID"=>"cri-o://0dd3d4df0d69dd05b654f24b67562d0ae0b1fc6116d0ccb18aee564267c16c0e", "exitCode"=>0, "finishedAt"=>"2020-06-19T01:43:21Z", "reason"=>"Completed", "startedAt"=>"2020-06-19T01:43:18Z"}}}], "hostIP"=>"10.22.6.21", "phase"=>"Succeeded", "podIP"=>"10.131.2.13", "podIPs"=>[{"ip"=>"10.131.2.13"}], "qosClass"=>"BestEffort", "startTime"=>"2020-06-19T01:43:15Z"}}, {"apiVersion"=>"v1", "kind"=>"Pod", "metadata"=>{"annotations"=>{"k8s.v1.cni.cncf.io/networks-status"=>"[{\n    \"name\": \"openshift-sdn\",\n    \"interface\": \"eth0\",\n    \"ips\": [\n        \"10.130.4.189\"\n    ],\n    \"dns\": {},\n    \"default-route\": [\n        \"10.130.4.1\"\n    ]\n}]", "openshift.io/deployment-config.latest-version"=>"1", "openshift.io/deployment-config.name"=>"stim-0", "openshift.io/deployment.name"=>"stim-0-1", "openshift.io/scc"=>"restricted"}, "creationTimestamp"=>"2020-06-19T01:43:18Z", "generateName"=>"stim-0-1-", "labels"=>{"binary_name"=>"itcm-system-sti", "deployment"=>"stim-0-1", "deploymentconfig"=>"stim-0"}, "name"=>"stim-0-1-gbhq5", "namespace"=>"2020-06-19-01-43-01-vcherkasov-10-4-12-32", "ownerReferences"=>[{"apiVersion"=>"v1", "blockOwnerDeletion"=>true, "controller"=>true, "kind"=>"ReplicationController", "name"=>"stim-0-1", "uid"=>"bbafad91-5b71-45ad-8db9-bb86cd84dc66"}], "resourceVersion"=>"61298411", "selfLink"=>"/api/v1/namespaces/2020-06-19-01-43-01-vcherkasov-10-4-12-32/pods/stim-0-1-gbhq5", "uid"=>"625e5d2a-3c35-43af-89d5-e53703cdb0a1"}, "spec"=>{"containers"=>[{"env"=>[{"name"=>"STIM_ID", "value"=>"stim-0"}, {"name"=>"STIM_BROKER_ADDRESS", "value"=>"stim-broker"}, {"name"=>"VALGRIND_ENABLED"}], "image"=>"seaartifactory01.meteorcomm.lan:3004/stimulator:latest", "imagePullPolicy"=>"Always", "name"=>"stimulator", "resources"=>{"requests"=>{"cpu"=>"1"}}, "securityContext"=>{"capabilities"=>{"drop"=>["KILL", "MKNOD", "SETGID", "SETUID"]}, "runAsUser"=>1004360000}, "terminationMessagePath"=>"/dev/termination-log", "terminationMessagePolicy"=>"File", "volumeMounts"=>[{"mountPath"=>"/var/run/secrets/kubernetes.io/serviceaccount", "name"=>"default-token-r8zb4", "readOnly"=>true}]}], "dnsPolicy"=>"ClusterFirst", "enableServiceLinks"=>true, "imagePullSecrets"=>[{"name"=>"default-dockercfg-d6rc8"}], "nodeName"=>"seaocp4dev01wrk02.ocp4dev01.meteorcomm.lan", "priority"=>0, "restartPolicy"=>"Always", "schedulerName"=>"default-scheduler", "securityContext"=>{"fsGroup"=>1004360000, "seLinuxOptions"=>{"level"=>"s0:c66,c35"}}, "serviceAccount"=>"default", "serviceAccountName"=>"default", "terminationGracePeriodSeconds"=>30, "tolerations"=>[{"effect"=>"NoExecute", "key"=>"node.kubernetes.io/not-ready", "operator"=>"Exists", "tolerationSeconds"=>300}, {"effect"=>"NoExecute", "key"=>"node.kubernetes.io/unreachable", "operator"=>"Exists", "tolerationSeconds"=>300}, {"effect"=>"NoSchedule", "key"=>"node.kubernetes.io/memory-pressure", "operator"=>"Exists"}], "volumes"=>[{"name"=>"default-token-r8zb4", "secret"=>{"defaultMode"=>420, "secretName"=>"default-token-r8zb4"}}]}, "status"=>{"conditions"=>[{"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:18Z", "status"=>"True", "type"=>"Initialized"}, {"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:21Z", "status"=>"True", "type"=>"Ready"}, {"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:21Z", "status"=>"True", "type"=>"ContainersReady"}, {"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:18Z", "status"=>"True", "type"=>"PodScheduled"}], "containerStatuses"=>[{"containerID"=>"cri-o://551ddfe7160af608178615583de0f0b65d76568b9beab61a4bb6f46e4fb7c6c0", "image"=>"seaartifactory01.meteorcomm.lan:3004/stimulator:latest", "imageID"=>"seaartifactory01.meteorcomm.lan:3004/stimulator@sha256:a18579cb4076176db6512cd6dc6011c944ca3b987ae586e80c83afd395b62523", "lastState"=>{}, "name"=>"stimulator", "ready"=>true, "restartCount"=>0, "started"=>true, "state"=>{"running"=>{"startedAt"=>"2020-06-19T01:43:20Z"}}}], "hostIP"=>"10.22.6.32", "phase"=>"Running", "podIP"=>"10.130.4.189", "podIPs"=>[{"ip"=>"10.130.4.189"}], "qosClass"=>"Burstable", "startTime"=>"2020-06-19T01:43:18Z"}}, {"apiVersion"=>"v1", "kind"=>"Pod", "metadata"=>{"annotations"=>{"k8s.v1.cni.cncf.io/networks-status"=>"[{\n    \"name\": \"openshift-sdn\",\n    \"interface\": \"eth0\",\n    \"ips\": [\n        \"10.128.8.130\"\n    ],\n    \"dns\": {},\n    \"default-route\": [\n        \"10.128.8.1\"\n    ]\n}]", "openshift.io/scc"=>"restricted"}, "creationTimestamp"=>"2020-06-19T01:43:03Z", "generateName"=>"stim-broker-deployment-", "labels"=>{"binary_name"=>"qpidd", "controller-uid"=>"b57d7bd2-54e7-4fe1-ad9a-737d74762767", "job-name"=>"stim-broker-deployment"}, "name"=>"stim-broker-deployment-qlj9l", "namespace"=>"2020-06-19-01-43-01-vcherkasov-10-4-12-32", "ownerReferences"=>[{"apiVersion"=>"batch/v1", "blockOwnerDeletion"=>true, "controller"=>true, "kind"=>"Job", "name"=>"stim-broker-deployment", "uid"=>"b57d7bd2-54e7-4fe1-ad9a-737d74762767"}], "resourceVersion"=>"61298192", "selfLink"=>"/api/v1/namespaces/2020-06-19-01-43-01-vcherkasov-10-4-12-32/pods/stim-broker-deployment-qlj9l", "uid"=>"35bd1f5d-61a9-472f-94fa-2a5950cb72d2"}, "spec"=>{"containers"=>[{"image"=>"seaartifactory01.meteorcomm.lan:3004/stim-broker:latest", "imagePullPolicy"=>"Always", "name"=>"stim-broker", "readinessProbe"=>{"exec"=>{"command"=>["qpid-stat", "-q", "-b", "127.0.0.1:13003"]}, "failureThreshold"=>3, "initialDelaySeconds"=>3, "periodSeconds"=>10, "successThreshold"=>1, "timeoutSeconds"=>3}, "resources"=>{}, "securityContext"=>{"capabilities"=>{"drop"=>["KILL", "MKNOD", "SETGID", "SETUID"]}, "runAsUser"=>1004360000}, "terminationMessagePath"=>"/dev/termination-log", "terminationMessagePolicy"=>"File", "volumeMounts"=>[{"mountPath"=>"/var/run/secrets/kubernetes.io/serviceaccount", "name"=>"default-token-r8zb4", "readOnly"=>true}]}], "dnsPolicy"=>"ClusterFirst", "enableServiceLinks"=>true, "imagePullSecrets"=>[{"name"=>"default-dockercfg-d6rc8"}], "nodeName"=>"seaocp4dev01inf04.ocp4dev01.meteorcomm.lan", "priority"=>0, "restartPolicy"=>"Never", "schedulerName"=>"default-scheduler", "securityContext"=>{"fsGroup"=>1004360000, "seLinuxOptions"=>{"level"=>"s0:c66,c35"}}, "serviceAccount"=>"default", "serviceAccountName"=>"default", "terminationGracePeriodSeconds"=>30, "tolerations"=>[{"effect"=>"NoExecute", "key"=>"node.kubernetes.io/not-ready", "operator"=>"Exists", "tolerationSeconds"=>300}, {"effect"=>"NoExecute", "key"=>"node.kubernetes.io/unreachable", "operator"=>"Exists", "tolerationSeconds"=>300}], "volumes"=>[{"name"=>"default-token-r8zb4", "secret"=>{"defaultMode"=>420, "secretName"=>"default-token-r8zb4"}}]}, "status"=>{"conditions"=>[{"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:03Z", "status"=>"True", "type"=>"Initialized"}, {"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:11Z", "status"=>"True", "type"=>"Ready"}, {"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:11Z", "status"=>"True", "type"=>"ContainersReady"}, {"lastProbeTime"=>nil, "lastTransitionTime"=>"2020-06-19T01:43:03Z", "status"=>"True", "type"=>"PodScheduled"}], "containerStatuses"=>[{"containerID"=>"cri-o://a7fc27b55cbb267bd477e547ea04a215682031c9341775cf54a8db417ab75e5e", "image"=>"seaartifactory01.meteorcomm.lan:3004/stim-broker:latest", "imageID"=>"seaartifactory01.meteorcomm.lan:3004/stim-broker@sha256:dbe05de9076577dabda8db2ec211e5300c3c8801ca54aba21171543dec9f2b19", "lastState"=>{}, "name"=>"stim-broker", "ready"=>true, "restartCount"=>0, "started"=>true, "state"=>{"running"=>{"startedAt"=>"2020-06-19T01:43:05Z"}}}], "hostIP"=>"10.22.6.24", "phase"=>"Running", "podIP"=>"10.128.8.130", "podIPs"=>[{"ip"=>"10.128.8.130"}], "qosClass"=>"BestEffort", "startTime"=>"2020-06-19T01:43:03Z"}}], "kind"=>"List", "metadata"=>{"resourceVersion"=>"", "selfLink"=>""}}
=begin
pod_details['items'].each do |this_pod|
  if (this_pod.dig('spec','containers',0,'env',0,'value').to_s.split('').join('').include?('stim-'))
    p stim_id = this_pod['spec']['containers'][0]['env'][0]['value'].slice(0, this_pod['spec']['containers'][0]['env'][0]['value'].length-2)
  elsif (this_pod.dig('spec', 'containers', 0, 'env', 0, 'value') == 'stim-broker')
      p stim_broker_details = ['spec']['containers'][0]['env'][0]['value']

  end
end
=end
stim_details = {}
pod_details['items'].each do |this_pod|
  if (this_pod['spec']['containers'][0]['name'] == 'stimulator')
    p stim_id = this_pod['spec']['containers'][0]['env'][0]['value']
     stim_details[stim_id] = Hash.new() # Each stim is a hash entry with its individual details
     stim_details[stim_id]['ip'] = this_pod['status']['podIP']
     stim_details[stim_id]['pod_name'] = this_pod['metadata']['name']
p stim_details
  elsif (this_pod['spec']['containers'][0]['name'] == 'stim-broker')
    #@stim_broker_details['pod_name'] = this_pod['metadata']['name']
  else
    next
  end
end

service_details = {
  "apiVersion"=>"v1",
  "items"=>[
    {
      "apiVersion"=>"v1",
      "kind"=>"Service",
      "metadata"=>{
        "creationTimestamp"=>"2020-06-18T01:42:28Z",
        "name"=>"stim-broker",
        "namespace"=>"2020-06-18-01-42-25-vcherkasov-10-4-12-32",
        "resourceVersion"=>"59005040",
        "selfLink"=>"/api/v1/namespaces/2020-06-18-01-42-25-vcherkasov-10-4-12-32/services/stim-broker",
        "uid"=>"ffb48f05-4cfb-44ed-adbd-488c8eef89ff"
      },
      "spec"=>{
        "clusterIP"=>"172.30.118.212",
        "externalTrafficPolicy"=>"Cluster",
        "ports"=>[
          {
            "nodePort"=>31978,
            "port"=>13003,
            "protocol"=>"TCP",
            "targetPort"=>13003
          }
        ],
        "selector"=>{
          "job-name"=>"stim-broker-deployment"
        },
        "sessionAffinity"=>"None",
        "type"=>"LoadBalancer"
      },
      "status"=>{
        "loadBalancer"=>{

        }
      }
    }
  ],
  "kind"=>"List",
  "metadata"=>{
    "resourceVersion"=>"",
    "selfLink"=>""
  }
}
# service_details['items'].each do |this_service|
#   #p this_service.dig('metadata', 'name').to_s.split('').join('')
#   p this_service.dig('status')
#       if (this_service.dig('metadata', 'name').to_s.split('').join('') == 'stim-broker')
#         # This is the one we want.
#         p this_service.dig('status', 'hostIP')
#       end
#     end
service_details['items'].each do |this_service|
      if (this_service['metadata']['name'] == 'stim-broker')
        # This is the one we want.
        p ip = this_service['spec']['clusterIP']
      end
    end


file_content = {
  "apiVersion": "v1",
  "kind": "DeploymentConfig",
  "metadata": {
    "name": "STIM_ID_VALUE",
    "binary_name": "itcm-system-sti"
  },
  "spec": {
    "replicas": 1,
    "template": {
      "metadata": {
        "labels": {
          "binary_name": "itcm-system-sti"
        }
      },
      "spec": {
        "containers": [
          {
            "name": "stimulator",
            "image": "seaartifactory01.meteorcomm.lan:3004/stimulator:STIM_TAG",
            "imagePullPolicy": "Always",
            "resources": {
              "requests": {
                "cpu": "1000m"
              }
            },
            "env": [
              {
                "name": "STIM_ID",
                "value": "STIM_ID_VALUE"
              },
              {
                "name": "STIM_BROKER_ADDRESS",
                "value": "stim-broker"
              },
              {
                "name": "VALGRIND_ENABLED",
                "value": "VALGRIND_ENABLED_VALUE"
              }
            ]
          }
        ]
      }
    }
  }
}

 replace = file_content.to_s.gsub('STIM_TAG', 'latest')

      p  replace = replace.gsub('STIM_ID_VALUE', 'stim-0')

        if (ENV['VALGRIND_ENABLED'].nil?)
          p replace = replace.gsub('VALGRIND_ENABLED_VALUE', 'no')
        else
          p replace = replace.gsub('VALGRIND_ENABLED_VALUE', ENV['VALGRIND_ENABLED'])
        end

stim_details = {"stim-0-1"=>{"ip"=>"10.22.6.36", "pod_name"=>"stim-0-1"}}
stim_id = "stim-0-1"
p stim_details.dig(stim_id,'ip')
p stim_id.slice(0, stim_id.length-2)
