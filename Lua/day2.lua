-- Easy Challenges

-- Concantenate
function concantenate(a1, a2)
    local array = {}
    local i = 1

    for i = 1, #a1 do
        array[i] = a1[i]
    end

    for i = 1, #a2 do
        array[#array + 1] = a2[i]
    end

    return array
end

-- Modify strict write see strict.lua

-- Medium Challenges

-- Queue
Queue = {name = 'Queue'}
function Queue:new(arr)
    arr = arr or {}
    setmetatable(arr, self)
    self.__index = self
    return arr
end

function Queue:add(item)
    self[#self + 1] = item
end

function Queue:remove()
    if #self > 0 then
        result  = self[1]
        self[1] = self[#self]
        self[#self] = nil
    else
        result = nil
    end
    return result
end 


