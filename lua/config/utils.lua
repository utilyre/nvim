---Uniquifies list.
---
---@generic T
---@param list T[] List to be uniquified.
---@return T[]
function table.unique(list)
  local ret, hash = {}, {}
  for _, value in ipairs(list) do
    if not hash[value] then table.insert(ret, value) end
    hash[value] = true
  end

  return ret
end

---Merges lists in each other.
---
---@generic T
---@param ... T[] Lists to be merged.
---@return T[]
function table.merge(...)
  local ret = {}
  for _, list in ipairs({ ... }) do
    for _, value in ipairs(list) do
      table.insert(ret, value)
    end
  end

  return ret
end

---Determines if an element should be yielded.
---
---@generic T
---@param list T[] List to be iterated over.
---@param predicate fun(value: T, index: number): T Callback to determine if element `value` should be yielded.
---@return T[]
function table.filter(list, predicate)
  local ret = {}
  for i, value in ipairs(list) do
    local keep = predicate(value, i)
    if keep then table.insert(ret, value) end
  end

  return ret
end

---Replaces each element.
---
---@generic T
---@param list T[] List to be iterated over.
---@param alter fun(value: T, index: number): T Callback to replace element `value`.
---@return T[]
function table.map(list, alter)
  local ret = {}
  for i, value in ipairs(list) do
    local new = alter(value, i)
    table.insert(ret, new)
  end

  return ret
end
