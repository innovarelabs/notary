{
	"server": {
		"http_addr": ":{{ .Values.server.port }}",
		"tls_key_file": "/tls/notary-server.key",
		"tls_cert_file": "/tls/notary-server.crt"
	},
	"trust_service": {
		"type": "{{ .Values.server.trust.type }}",
		"hostname": "notarysigner",
		"port": "{{ .Values.server.trust.port }}",
		"tls_ca_file": "/tls/root-ca.crt",
		"key_algorithm": "ecdsa",
		"tls_client_cert": "/tls/notary-server.crt",
		"tls_client_key": "/tls/notary-server.key"
	},
	"logging": {
		"level": "{{ .Values.logging.level }}"
	},
	"storage": {
		"backend": "{{ .Values.storage.type }}",
		"db_url": "{{ template "notary.serverdburl" . }}"
	},
	"repositories": {
		"gun_prefixes": {{ .Values.server.gunPrefixes | toJson }}
	}
}
