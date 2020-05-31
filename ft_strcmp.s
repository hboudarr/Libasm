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

loop:			mov		al, byte [rdi] 	; low byte, value of char
				mov		bl, byte [rsi]
				cmp 	al, 0			; compare to 0 (end of strings)
				je		end				; if equal jump to end
				cmp		bl, 0
				je		end
				cmp		al, bl			; compare the value of each strings char
				jne		end				; if not equal jump to end
				inc		rdi				; next char
				inc		rsi
				jmp		loop			; again

end:			movzx	rax, al			; movzx = copy smaller register in a bigger and complete it with 0
				movzx	rbx, bl
				sub		rax, rbx		; substraction for compare
				ret
