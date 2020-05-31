# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/22 15:25:29 by hboudarr          #+#    #+#              #
#    Updated: 2020/05/24 15:23:52 by hboudarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				global	_ft_strcpy

				section .text

_ft_strcpy:		xor				rax, rax		; clear register
				mov				rax, rdi		; rdi, first argument in rax register
				cld								; put strings in right ascending ordrer

loop:			cmp				byte [rsi], 0	; compare bytes one by one till 0
				movsb							; instruction for  copy + inc
				je				end				; if equal jump to end
				jmp				loop			; if not loop again

end:
				ret

				; on se doit de remettre rdi dans rax car c'est l'adresse du premier caratere que pointe rdi qui est mis dans rax afin de recuperer la bonne valeur de retour. Sinon a chaque movsb l'adresse pointera sur le prochain element du fait de son incrementation.
