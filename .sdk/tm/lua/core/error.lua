-- Woody SDK error

local WoodyError = {}
WoodyError.__index = WoodyError


function WoodyError.new(code, msg, ctx)
  local self = setmetatable({}, WoodyError)
  self.is_sdk_error = true
  self.sdk = "Woody"
  self.code = code or ""
  self.msg = msg or ""
  self.ctx = ctx
  self.result = nil
  self.spec = nil
  return self
end


function WoodyError:error()
  return self.msg
end


function WoodyError:__tostring()
  return self.msg
end


return WoodyError
