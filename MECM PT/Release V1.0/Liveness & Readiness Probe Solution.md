Liveness & Readiness Probe Solution
-----------------------------------

Leverage K8s to perform Liveness/Readiness probe:
https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/

# MECM component
1. Add health-check GET API for all MECM container

Example:<br/>
http.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {<br/>
        w.WriteHeader(200)<br/>
        w.Write([]byte("ok"))<br/>
})

2. Update HELM charts to add liveness and readiness probe to above defined API

Probe configuration parameters<br/>
livenessProbe:<br/>
  path: /health<br/>
  scheme: HTTP // or HTTPS, wherein kubelet skip certificate verification<br/>
  initialDelaySeconds: 600<br/>
  periodSeconds: 60<br/>
  timeoutSeconds: 10<br/>
  successThreshold: 1<br/>
  FailureThreshold: 3<br/>
readinessProbe:<br/>
  path: /health<br/>
  scheme: HTTP // or HTTPS, wherein kubelet skip certificate verification<br/>
  initialDelaySeconds: 15<br/>
  periodSeconds: 10<br/>
  timeoutSeconds: 5<br/>

Probe configurations<br/>
livenessProbe: <br/>
path: {{ index .Values.livenessProbe.path}}<br/>
port: {{ index .Values.containerPort }}<br/>
scheme: {{ index .Values.livenessProbe.scheme}}<br/>
initialDelaySeconds: {{ index .Values.livenessProbe.initialDelaySeconds}}<br/>
periodSeconds: {{ index .Values.livenessProbe.periodSeconds}}<br/>
timeoutSeconds: {{ index .Values.livenessProbe.timeoutSeconds}}<br/>
successThreshold: {{ index .Values.livenessProbe.successThreshold}}<br/>
failureThreshold: {{ index .Values.livenessProbe.failureThreshold}}<br/>

readinessProbe:<br/>
  httpGet:<br/>
  path: {{ index .Values.readinessProbe.path}}<br/>
  port: {{ index .Values.containerPort }}<br/>
  scheme: {{ index .Values.readinessProbe.scheme}}<br/>
  initialDelaySeconds: {{ index .Values.readinessProbe.initialDelaySeconds}}<br/>
  periodSeconds: {{ index .Values.readinessProbe.periodSeconds}}<br/>
  timeoutSeconds: {{ index .Values.readinessProbe.timeoutSeconds}}<br/>


# DB component

1. Update HELM charts to add command based liveness and readiness probe

Probe configuration parameters<br/>
liveness:<br/>
  initialDelaySeconds: 30<br/>
  periodSeconds: 10<br/>
  timeoutSeconds: 5<br/>
  enabled: true // necessary to disable liveness probe when setting breakpoints in debugger so K8s doesn't restart unresponsive container<br/>
readiness:<br/>
  initialDelaySeconds: 15<br/>
  periodSeconds: 10<br/>
  timeoutSeconds: 5<br/>

Probe configurations<br/>
readinessProbe:<br/>
exec:<br/>
command:<br/>
-/usr/share/container-scripts/mysql/readiness-probe.sh<br/>
initialDelaySeconds: {{ .Values.readiness.initialDelaySeconds }}<br/>
periodSeconds: {{ .Values.readiness.periodSeconds }}<br/>
timeoutSeconds: {{ .Values.readiness.timeoutSeconds }}<br/>
{{- if eq .Values.liveness.enabled true }}<br/>
livenessProbe:<br/>
exec:<br/>
command: ["mysqladmin", "ping"]<br/>
initialDelaySeconds: {{ .Values.liveness.initialDelaySeconds }}<br/>
periodSeconds: {{ .Values.liveness.periodSeconds }}<br/>
timeoutSeconds: {{ .Values.liveness.timeoutSeconds }}<br/>