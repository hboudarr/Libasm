# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/24 15:24:40 by hboudarr          #+#    #+#              #
#    Updated: 2020/05/26 14:40:22 by hboudarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
; ssize_t write(int fd/rdi, const void *buf/rsi, size_t count/rdx)
				global		_ft_write
				extern		___error

				section		.text

_ft_write:		mov		rax, 0x2000004    ; syscall code for write on MacOS
			syscall	
				jc		end_err			  ;jc = if CF = carry flag = 1 jump at end_err
				ret



end_err:		mov		rbx, rax		; we stock the return value in an other register, rbx
				push	rbx				; pushing the value of rbx on the stack before call err
				call 	___error		; call error is a fonction who use registers, but we don't know wich one so we use the stack for save our value
				pop		rbx				; back
				mov 	[rax], rbx		; err returne int pointer, put the value of rbx where the err pointed
				mov		rax, -1			; we "ecrase" the value by -!
				ret
