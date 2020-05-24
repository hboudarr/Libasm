# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/24 16:28:46 by hboudarr          #+#    #+#              #
#    Updated: 2020/05/24 16:53:07 by hboudarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
; ssize_t read(int fd/rdi, void *buf/rsi, size_t count/rdx)

				global		_ft_read

				section		.text

_ft_read:		mov			rax, 0x2000003
				mov			r9,	rdx

			syscall

				jc			end_err

end:			mov			rax, r9
				ret

end_err:		mov			rax, -1
				ret
