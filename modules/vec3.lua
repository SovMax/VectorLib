local vec_mt = {}
local vec3 = setmetatable({},
	{
		__call = function(self, x, y, z)
			return setmetatable({ x = x, y = y, z = z }, vec_mt)
		end
	}
)
vec_mt.__index = vec3

vec_mt.__add = function(self, second)
	return vec3(self.x + second.x, self.y + second.y, self.z + second.z)
end

vec_mt.__sub = function(self, second)
	return vec3(self.x - second.x, self.y - second.y, self.z - second.z)
end

-- scalar product of vectors
vec_mt.__mul = function(self, second)
	return self.x * second.x + self.y * second.y + self.z * second.z
end

vec_mt.__tostring = function(self)
	return self.x .. "," .. self.y .. "," .. self.z
end

function vec3:clone()
	return vec3(self.x, self.y, self.z)
end

function vec3:length()
	return math.sqrt(self.x ^ 2 + self.y ^ 2 + self.z ^ 2)
end

return vec3
