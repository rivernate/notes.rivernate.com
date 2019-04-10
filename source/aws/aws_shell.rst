AWS SHELL
===================

Setup
#####

Installation
************

.. code-block:: bash

    yay -S aws-cli gopass summon jq

Copy the following files to to ``.local/bin/``

* https://github.com/rivernate/.dotfiles/blob/master/home/.local/bin/aws_login.sh
* https://github.com/rivernate/.dotfiles/blob/master/home/.local/bin/aws_shell.sh

Configuration
*************

Create the file ``/usr/local/lib/summon/gopass`` with the content:

.. code-block:: bash

    #!/bin/bash
    ARGS=$(echo $1| tr : \ )
    gopass $ARGS

add the following to gopass under ``show private/aws/<aws account name>/<aws username>``

.. code-block:: yaml

    AccessKey
    secretkey: SecretKey
    accesskey: accesskey
    mfa: arn for mfa
    account: aws account
    region: default aws region
    username: aws username

create the following under ''$XDG_CONFIG_HOME/aws_shell/<user_account_alias>.yml''

.. code-block:: bash

    AWS_ACCESS_KEY_ID: !var private/aws/<aws_account>/<aws_username>:accesskey
    AWS_SECRET_ACCESS_KEY: !var private/aws/<aws_account>/<aws_username>:secretkey
    AWS_MFA_ARN: !var private/aws/<aws_account>/<aws_username>:mfa


Usage
*****

from a bash shell run:

.. code-block:: bash

    aws_shell <user_account_alias>