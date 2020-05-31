# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/26 13:55:25 by hboudarr          #+#    #+#              #
#    Updated: 2020/05/26 14:54:48 by hboudarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
; char	*ft_strdup(const char *s);


				global		_ft_strdup

				section		.text
				extern		_malloc
				extern		_ft_strlen
				extern		_ft_strcpy


_ft_strdup:		xor			rax, rax
				call		_ft_strlen  ; len for malloc
				push		rdi			; save string for malloc
				inc			rax			; i++ for \0
				mov			rdi, rax	
				call		_malloc
				pop 		r8			; string back in empty register
				mov			rdi, rax
				mov			rsi, r8
				call		_ft_strcpy
				ret


				; tu push une valeur/ ou une chaine sur la stack et tu la recuperes directement dans un registre avec pop (dans l'ordre, du haut de la pile vers le bas).
					
