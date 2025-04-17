$TTL    604800
@       IN      SOA     gunnisvr.com. admin.gunnisvr.com. (
                         2023041501     ; Serial
                         604800         ; Refresh
                         86400          ; Retry
                         2419200        ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns.gunnisvr.com.
@       IN      A       172.30.89.41
ns      IN      A       172.30.89.41
www     IN      A       172.30.89.41