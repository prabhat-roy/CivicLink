{{/* Common name */}}
{{- define "programme-evaluation.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "programme-evaluation.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "programme-evaluation.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- include "programme-evaluation.fullname" . -}}
{{- else -}}
{{- default "default" .Values.serviceAccount.name -}}
{{- end -}}
{{- end -}}

{{- define "programme-evaluation.labels" -}}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "programme-evaluation.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: civiclink
civiclink.io/domain: analytics-policy
{{- end -}}

{{- define "programme-evaluation.selectorLabels" -}}
app.kubernetes.io/name: {{ include "programme-evaluation.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}