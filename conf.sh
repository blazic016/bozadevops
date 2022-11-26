#!/bin/bash



HOSTS_NAME="testname"
WEBSITE="testsite"


# Do not change
HOSTS_IP="127.0.0.1"
ROOT_DIR=$(pwd)


## Functions

testF()
{
    echo "testF"
}

hosts_F()
{
    echo -e "${1} \t ${2}" >> /etc/hosts
}

SetApacheConf()
{
    content_apache='
        <VirtualHost *:80>
            ServerName  '$HOSTS_NAME'
            DocumentRoot '$ROOT_DIR'/
                ErrorLog '$ROOT_DIR'/m2-error.log
                CustomLog '$ROOT_DIR'/m2-access.log combined
                <Directory "'$ROOT_DIR'/">;
                Options FollowSymLinks
                AllowOverride All
                Require all granted
                </Directory>
            </VirtualHost>
        '

    dir="/etc/apache2/sites-available"

    pushd $dir        
        if [ -f "$(pwd)/${WEBSITE}" ]; then

            echo "Error: file $(pwd)/${WEBSITE}.conf exists!"
        else
            echo "$content_apache" > $(pwd)/${WEBSITE}.conf
        fi
    popd
}

main() 
{
    echo "start main"
    hosts_F $HOSTS_IP $HOSTS_NAME
    SetApacheConf
}



main "$@"

