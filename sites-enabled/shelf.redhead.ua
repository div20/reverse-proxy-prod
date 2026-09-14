shelf.redhead.ua {
    tls internal
    #reverse_proxy 10.96.99.18:80
    @internal {
        client_ip 10.96.0.0/16 10.97.0.0/16 10.99.0.0/16
    }

    route {
        reverse_proxy @internal 10.96.99.18:80
        respond 403
    }
}

shelf.redhead.ua:8090 {
    tls internal
    #reverse_proxy 10.96.99.18:8090
    @internal {
        client_ip 10.96.0.0/16 10.97.0.0/16 10.99.0.0/16
    }

    route {
        reverse_proxy @internal 10.96.99.18:8090
        respond 403
    }
}
