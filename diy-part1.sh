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

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
svn co https://github.com/Lienol/openwrt-luci/branches/19.07/themes/luci-theme-bootstrap-mod package/lean/luci-theme-bootstrap-mod #增加一个肤色
git clone -b master https://github.com/pymumu/luci-app-smartdns.git package/lean//luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
git clone https://github.com/fw876/helloworld.git package/lean/luci-app-helloworld
