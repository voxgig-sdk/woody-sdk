package = "voxgig-sdk-woody"
version = "0.0-1"
source = {
  url = "git://github.com/voxgig-sdk/woody-sdk.git"
}
description = {
  summary = "Woody SDK for Lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["woody_sdk"] = "woody_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
