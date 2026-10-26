-- Gilt: pick a colour, see it everywhere
local M = {}

local function blend(a, b, t)
  if t < 0 or t > 1 then
    error("t must be between 0 and 1")
  end
  return a + (b - a) * t
end

M.accent = { hex = "#D4AF37", alpha = 0.85, enabled = true }
M.blend = blend
return M
