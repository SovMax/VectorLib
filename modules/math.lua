local vec3 = require("veclib:vec3")

function math.vec_angle(vec_one, vec_two)
    return vec_one * vec_two / (vec_one:length() * vec_two:length())
end

function math.vec_prod(vec_one, vec_two)
    return vec3(vec_one.y * vec_two.z - vec_one.z * vec_two.y, vec_one.z * vec_two.x - vec_one.x * vec_two.z,
        vec_one.x * vec_two.y - vec_one.y * vec_two.x)
end

function math.vec_col(vec_one, vec_two)
    local k = vec_two.y / vec_one.y

    if vec_one.x * k == vec_two.x and
        vec_one.y * k == vec_two.y and
        vec_one.z * k == vec_two.z then
        return true
    end
    return false
end

return math
