if status is-interactive
    # Commands to run in interactive sessions can go here
end

#function fish_greeting
#    echo '                 '(set_color 16537e)'___
#  ___======____='(set_color 5892bc)'-'(set_color b4d4eb)'-'(set_color 5892bc)'-='(set_color 16537e)')
#/T            \_'(set_color b4d4eb)'--='(set_color 5892bc)'=='(set_color 16537e)')    '(set_color b4d4eb)(whoami)'@'(hostname)'
#[ \ '(set_color 5892bc)'('(set_color b4d4eb)'0'(set_color 5892bc)')   '(set_color 16537e)'\~    \_'(set_color b4d4eb)'-='(set_color 5892bc)'='(set_color 16537e)')'(set_color yellow)'    Uptime: '(set_color white)(uptime | sed 's/.*up \([^,]*\), .*/\1/')(set_color 16537e)'
# \      / )J'(set_color 5892bc)'~~    \\'(set_color b4d4eb)'-='(set_color 16537e)')    '(set_color yellow)'IP Address: '(set_color white)(ipconfig getifaddr en0)(set_color 16537e)'
#  \\\\___/  )JJ'(set_color 5892bc)'~'(set_color b4d4eb)'~~   '(set_color 16537e)'\)     '(set_color yellow)'Version: '(set_color white)(echo $FISH_VERSION)(set_color 16537e)'
#   \_____/JJJ'(set_color 5892bc)'~~'(set_color b4d4eb)'~~    '(set_color 16537e)'\\
  #     '(set_color 5892bc)'/ '(set_color b4d4eb)'\  '(set_color b4d4eb)', \\'(set_color 16537e)'J'(set_color 5892bc)'~~~'(set_color b4d4eb)'~~     '(set_color 5892bc)'\\
  #(-'(set_color b4d4eb)'\)'(set_color 16537e)'\='(set_color 5892bc)'|'(set_color b4d4eb)'\\\\\\'(set_color 5892bc)'~~'(set_color b4d4eb)'~~       '(set_color 5892bc)'L_'(set_color b4d4eb)'_
#'(set_color 5892bc)'('(set_color 16537e)'\\'(set_color 5892bc)'\\)  ('(set_color b4d4eb)'\\'(set_color 5892bc)'\\\)'(set_color 16537e)'_           '(set_color b4d4eb)'\=='(set_color 5892bc)'__
#   '(set_color 16537e)'\V    '(set_color 5892bc)'\\\\'(set_color 16537e)'\) =='(set_color 5892bc)'=_____   '(set_color b4d4eb)'\\\\\\\\'(set_color 5892bc)'\\\\
  #          '(set_color 16537e)'\V)     \_) '(set_color 5892bc)'\\\\'(set_color b4d4eb)'\\\\JJ\\'(set_color 5892bc)'J\)
#                    '(set_color 16537e)'/'(set_color 5892bc)'J'(set_color b4d4eb)'\\'(set_color 5892bc)'J'(set_color 16537e)'T\\'(set_color 5892bc)'JJJ'(set_color 16537e)'J)
#                      (J'(set_color 5892bc)'JJ'(set_color 16537e)'| \UUU)
#                       (UU)'(set_color normal)
#end


function fish_greeting
  vfetch
end
