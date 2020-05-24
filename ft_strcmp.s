# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/22 17:51:49 by hboudarr          #+#    #+#              #
#    Updated: 2020/05/24 16:04:33 by hboudarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				global _ft_strcmp

				section .text

_ft_strcmp:		xor		rax, rax
				xor		rbx, rbx
				cld

loop:			mov		al, byte [rdi]
				mov		bl, byte [rsi]
				cmp 	al, 0
				je		end
				cmp		bl, 0
				je		end
				cmp		al, bl
				jne		end
				inc		rdi
				inc		rsi
				jmp		loop

end:			movzx	rax, al
				movzx	rbx, bl
				sub		rax, rbx
				ret
; on recupere le low byte, la ou est stocker la valuer du char
; on le compare a 0, si c'est pas la gfin de la chaine
; movzx : permet de copier un plus petit registre dans un autre plus gros et de remplir le reste de 0. 
