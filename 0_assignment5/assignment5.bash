#!/bin/bash

# 0.0.0.0 - 255.255.255.255
pattern='^[0-9]'
validate_ip()
{
    for ip_addr in "$@"
    do
        sep_str=(${ip_addr//./ })
        
        # invalid by default
        local valid_flag=1

        for dit in ${sep_str[@]}
        do
            if [[ $dit =~ ^[0-9]+$ ]] && (($dit >= 0 && $dit <= 255))
            then
                valid_flag=0
            else
                valid_flag=1
                break;
            fi
        done

        if [[ $valid_flag == 0 ]]
        then
            _valid_ips+=( $ip_addr )
        else
            _invalid_ips+=( $ip_addr )
        fi
    done
}

validate_ip 127.0.0.1 168.260.0.234 1.2.3.4 123.1oo.34.21 204.225.122.150

echo "Valid ips are "
printf "%s\n" "${_valid_ips[@]}"
echo "=============================="
echo "Invalid ips are "
printf "%s\n" "${_invalid_ips[@]}"

echo "=============================="

max()
{
    if [[ $4 != "result" ]]
    then
        echo "Invalid variable name."
        return 1;
    fi
}

max 1 5 4 resu
