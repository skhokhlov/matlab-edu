function mark_corners(r)
%Дано:Поле с роботом и неперемекающимеся перегородками
%Результат:углы поля замаркированы
    goto_corner(r, 's','w')
    r.mark()
    goto_corner(r,'s','o')
    r.mark()
    goto_corner(r,'o','n')
    r.mark()
    goto_corner(r,'w','n')
    r.mark()
end