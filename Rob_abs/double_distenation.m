function double_distenation(r)

if r.is_bord('n')==0
    r.step('n')
    double_distenation(r)
    r.step('s')
    r.step('s')
end
end