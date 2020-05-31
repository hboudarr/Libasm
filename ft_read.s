# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/24 16:28:46 by hboudarr          #+#    #+#              #
#    Updated: 2020/05/25 18:03:11 by hboudarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
; ssize_t read(int fd/rdi, void *buf/rsi, size_t count/rdx)

				global		_ft_read
				extern		___error

				section		.text

_ft_read:		mov			rax, 0x2000003
			syscall
				jc			end_err
				ret

end_err:		mov			rbx, rax
				push		rbx
				call		___error
				pop			rbx
				mov 		[rax], rbx
				mov			rax, -1
				ret
; if you need explications, please check comment of ft_write.s
