/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/22 15:05:53 by hboudarr          #+#    #+#             */
/*   Updated: 2020/05/22 18:17:01 by hboudarr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# ifndef LIBASM_H
# define LIBASM_H

# include <sys/appleapiopts.h>
# include <sys/param.h>
//# include <sys/systm.h>
# include <sys/types.h>
//# include <sys/sysent.h>
//# include <sys/sysproto.h>

size_t		ft_strlen(const char *s);
char		*ft_strcpy(char *dst, char const *src);
int			ft_strcmp(const char *s1, const char *s2);

#endif
