{{/* Common name */}}
{{- define "epidemic-tracking.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "epidemic-tracking.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "epidemic-tracking.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- include "epidemic-tracking.fullname" . -}}
{{- else -}}
{{- default "default" .Values.serviceAccount.name -}}
{{- end -}}
{{- end -}}

{{- define "epidemic-tracking.labels" -}}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "epidemic-tracking.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: civiclink
civiclink.io/domain: public-health
{{- end -}}

{{- define "epidemic-tracking.selectorLabels" -}}
app.kubernetes.io/name: {{ include "epidemic-tracking.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}