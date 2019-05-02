Traefik
=================

https://traefik.io/

A reverse proxy and load balancer that has hooks for the docker daemon


Setup
#####

Installation
************
.. code-block:: bash

    yay -S traefik dnsmasq networkmanager


Configuration
*************

Add the following to ``/etc/NetworkManager/NetworkManager.conf``

.. code-block:: bash

    address=/docker.local/127.0.0.1

Sometimes it's necessary to run ``setcap`` to allow traefik to bind to port 80

.. code-block:: bash

    sudo setcap CAP_NET_BIND_SERVICE=+eip /bin/traefik


Add the following to  ``/etc/traefik/traefik.toml``

.. code-block:: toml

   ################################################################
   # Web configuration backend
   ################################################################
   [web]
   address = ":8080"
   ################################################################
   # Docker configuration backend
   ################################################################
   [docker]
   domain = "docker"
   watch = true