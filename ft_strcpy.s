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

_ft_strcpy:		xor				rax, rax		; on declare rax
				mov				rax, rdi		; destination dans rax
				cld								; permet de remettre la chaine dans le bon ordre d'incrementation

loop:			cmp				byte [rsi], 0	; on fait defiler en partant de 0
				movsb							; instruction de copie + inc
				je				end				; if equal
				jmp				loop			; if not on boucle

end:
				ret

				; on se doit de remettre rdi dans rax car c'est l'adresse du premier caratere que pointe rdi qui est mis dans rax afin de recuperer la bonne valeur de retour. Si au contraire on declare par rdi dasn rax a chaque movsb l'adresse pointera sur le prochain element du fait de son incrementation.
