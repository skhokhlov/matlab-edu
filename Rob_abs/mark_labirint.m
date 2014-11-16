function mark_labirint(r)
if r.is_mark() == 0
    r.mark()
    r.step('n')
    mark_labirint(r)
    r.step('s')
    r.step('w')
    mark_labirint(r)
    r.step('o')
    r.step('s')
    mark_labirint(r)
    r.step('n')
    r.step('o')
    mark_labirint(r)
    r.step('w')
end
end