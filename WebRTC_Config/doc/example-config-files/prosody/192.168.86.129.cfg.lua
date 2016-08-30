-- Plugins path gets uncommented during jitsi-meet-tokens package install - that's where token plugin is located
--plugin_paths = { "/usr/share/jitsi-meet/prosody-plugins/" }

VirtualHost "192.168.86.129"
        -- enabled = false -- Remove this line to enable this host
        authentication = "anonymous"
        -- Properties below are modified by jitsi-meet-tokens package config
        -- and authentication above is switched to "token"
        --app_id="example_app_id"
        --app_secret="example_app_secret"
        -- Assign this host a certificate for TLS, otherwise it would use the one
        -- set in the global section (if any).
        -- Note that old-style SSL on port 5223 only supports one certificate, and will always
        -- use the global one.
        ssl = {
                key = "/etc/prosody/certs/192.168.86.129.key";
                certificate = "/etc/prosody/certs/192.168.86.129.crt";
        }
        -- we need bosh
        modules_enabled = {
            "bosh";
            "pubsub";
            "ping"; -- Enable mod_ping
        }

Component "conference.192.168.86.129" "muc"
    --modules_enabled = { "token_verification" }
admins = { "focus@auth.192.168.86.129" }

Component "jitsi-videobridge.192.168.86.129"
    component_secret = "uo1DcVtu"

VirtualHost "auth.192.168.86.129"
    authentication = "internal_plain"

Component "focus.192.168.86.129"
    component_secret = "Q@9F7MBW"
