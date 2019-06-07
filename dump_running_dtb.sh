#!/bin/sh
sysctl -b hw.fdt.dtb | dtc -I dtb -O dts
