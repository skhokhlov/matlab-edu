function change_side(r)

if r.is_bord('n') == 0
   r.step('n')
   change_side(r)
   r.step('n')
else
    while r.is_bord('s') == 0
        r.step('s')
    end
end

end

