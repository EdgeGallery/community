Liveness & Readiness Probe Solution
-----------------------------------

Leverage K8s to perform Liveness/Readiness probe: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/

#MECM component
1. Add health-check GET API for all MECM container

Example:
http.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {
        w.WriteHeader(200)
        w.Write([]byte("ok"))
})

2. Update HELM charts to add liveness and readiness probe to above defined API

Probe configuration parameters
livenessProbe:
  path: /health
  scheme: HTTP // or HTTPS, wherein kubelet skip certificate verification
  initialDelaySeconds: 600
  periodSeconds: 60
  timeoutSeconds: 10
  successThreshold: 1
  FailureThreshold: 3
readinessProbe:
  path: /health
  scheme: HTTP // or HTTPS, wherein kubelet skip certificate verification
  initialDelaySeconds: 15
  periodSeconds: 10
  timeoutSeconds: 5

Probe configurations
livenessProbe:  httpGet:    path: {{ index .Values.livenessProbe.path}}    port: {{ index .Values.containerPort }}    scheme: {{ index .Values.livenessProbe.scheme}}  initialDelaySeconds: {{ index .Values.livenessProbe.initialDelaySeconds}}  periodSeconds: {{ index .Values.livenessProbe.periodSeconds}}  timeoutSeconds: {{ index .Values.livenessProbe.timeoutSeconds}}  successThreshold: {{ index .Values.livenessProbe.successThreshold}}  failureThreshold: {{ index .Values.livenessProbe.failureThreshold}}

readinessProbe:
  httpGet:    path: {{ index .Values.readinessProbe.path}}    port: {{ index .Values.containerPort }}    scheme: {{ index .Values.readinessProbe.scheme}}  initialDelaySeconds: {{ index .Values.readinessProbe.initialDelaySeconds}}  periodSeconds: {{ index .Values.readinessProbe.periodSeconds}}  timeoutSeconds: {{ index .Values.readinessProbe.timeoutSeconds}}


#DB component

1. Update HELM charts to add command based liveness and readiness probe

Probe configuration parameters
liveness:
  initialDelaySeconds: 30
  periodSeconds: 10
  timeoutSeconds: 5
  # necessary to disable liveness probe when setting breakpoints
  # in debugger so K8s doesn't restart unresponsive container
  enabled: true
readiness:
  initialDelaySeconds: 15
  periodSeconds: 10
  timeoutSeconds: 5

Probe configurations
readinessProbe:  exec:    command:      - /usr/share/container-scripts/mysql/readiness-probe.sh  initialDelaySeconds: {{ .Values.readiness.initialDelaySeconds }}  periodSeconds: {{ .Values.readiness.periodSeconds }}  timeoutSeconds: {{ .Values.readiness.timeoutSeconds }}  {{- if eq .Values.liveness.enabled true }}livenessProbe:  exec:    command: ["mysqladmin", "ping"]  initialDelaySeconds: {{ .Values.liveness.initialDelaySeconds }}  periodSeconds: {{ .Values.liveness.periodSeconds }}  timeoutSeconds: {{ .Values.liveness.timeoutSeconds }}