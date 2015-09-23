do
  function clear(cells)
    cells.set(0)
  end
end

do
  function add(cells)
    cells.next()
    local v = cells.set(0)
    cells.prev()
    cells.set(cells.get() + v)
  end
end

do
  function sub(cells)
    cells.next()
    local v = cells.set(0)
    cells.prev()
    cells.set(cells.get() - v)
  end
end

do
  function push(cells)
    local v = cells.set(0)
    cells.next()
    cells.set(v)
    cells.prev()
  end
end

do
  function pull(cells)
    cells.next()
    local v = cells.set(0)
    cells.prev()
    cells.set(v)
  end
end

do
  function dup(cells)
    local v = cells.get()
    cells.next()
    cells.set(v)
    cells.next()
    cells.set(0)
    cells.prev()
    cells.prev()
  end
end
