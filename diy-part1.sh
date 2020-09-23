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

# Add a feed source by kenzok8/openwrt-packages
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
# sed -i '$a src-git src-git extra https://github.com/Andy2244/openwrt-extra.git

# Add apps to profile-lean
pushd package/lean
git clone --depth=1 https://github.com/rufengsuixing/luci-app-onliner
git clone --depth=1 https://github.com/kang-mk/luci-app-smartinfo
git clone --depth=1 https://github.com/tty228/luci-app-serverchan
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr.git
git clone --depth=1 https://github.com/destan19/OpenAppFilter.git
git clone --depth=1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk
git clone --depth=1 https://github.com/BoringCat/luci-app-mentohust.git
