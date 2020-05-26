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

_ft_write:		mov		rax, 0x2000004    ; code syscall pour write MacOS
			syscall	
				jc		end_err			  ; si CF = carry flag = 1 jump at end_err
				ret



end_err:		mov		rbx, rax		; rax qui content la valeur de retour on la stock temporairement dans un autre registre
				push	rbx				; on push rbx sur la stack pour pas que call error change la valeur
				call 	___error		; call error est une fonction qui utilise des registres, on sait pas lequel donc on push et pop pour la sauvagarder et la recuperer derriere
				pop		rbx
				mov 	[rax], rbx		; l'erreur retourne un pointeur sur int, donc on met la valeur de rbx la ou pointe rax
				mov		rax, -1			; on ecrase la velur de rax pour y mettre -1
				ret
