# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/24 15:24:40 by hboudarr          #+#    #+#              #
#    Updated: 2020/05/24 16:54:17 by hboudarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
; ssize_t write(int fd/rdi, const void *buf/rsi, size_t count/rdx)
				global		_ft_write

				section		.text

_ft_write:		mov		rax, 0x2000004
				mov		r9,	rdx

			syscall

				jc		end_err

end:			mov		rax, r9
				ret

end_err:		mov		rax, -1
				ret
