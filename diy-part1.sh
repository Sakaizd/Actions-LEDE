#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add feed sources
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash

git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus

git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan

git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

git clone https://github.com/jerrykuku/lua-maxminddb.git  package/lean/lua-maxminddb  

git clone https://github.com/jerrykuku/luci-app-vssr.git  package/lean/luci-app-vssr
