# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    monitoring.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zcadinot <zcadinot@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/10/30 07:08:18 by zcadinot          #+#    #+#              #
#    Updated: 2025/10/30 09:30:40 by zcadinot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/bash

archt=$(uname -a)
nbproc=$(lscpu | grep Socket | awk '{print $2}')
Vcpu=$(nproc)
MemFree=$(cat /proc/meminfo | grep MemFree | awk '{print $2}')
MemAvailable=$(free --mega | grep Mem | awk '{print$4}')
MemTotal=$(free --mega | grep Mem | awk '{print$2}')
MemUsage=$(free --mega | grep Mem | awk '{print$3}')
MemUsagePercent=$(( ($MemUsage * 100) / MemTotal))

MESSAGE="#Architecture: $archt
#CPU physical : $nbproc
#vCPU: $Vcpu
#Memory Usage: $MemUsage MB ($MemUsagePercent%)"

echo "$MESSAGE \n"
