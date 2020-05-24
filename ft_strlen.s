# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/22 15:01:02 by hboudarr          #+#    #+#              #
#    Updated: 2020/05/22 17:28:30 by hboudarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	_ft_strlen

			section	.text

_ft_strlen:	xor		rax, rax  ; i = 0
			jmp		loop

loop:		cmp 	byte [rdi + rax], 0 ; compare str[i] a \0
			je		end					; si c'est egal
			inc 	rax					; i++
			jmp		loop

end:
			ret
