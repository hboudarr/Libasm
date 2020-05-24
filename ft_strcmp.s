# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/22 17:51:49 by hboudarr          #+#    #+#              #
#    Updated: 2020/05/22 20:11:38 by hboudarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				global _ft_strcmp

				section .text

_ft_strcmp:
		;		xor 	rcx, rcx
				cld

loop:			cmp 	byte [rsi], 0
			;	cmp		byte [rdi], 0
				jz		end
				cmpsb
				jz		final
		;		jnz		loop	
		;		jz		end
			;	jmp		final
	;			jmp		loop

final:	;		sub		rdi, rsi
		;		mov 	rax, rdi
				mov		rax, rdi
				sub		rax, rsi
	;			mov		rax, [rdi]
	;			sub		rax, [rsi]

end:			ret		
	
