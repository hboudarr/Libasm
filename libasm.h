/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/22 15:05:53 by hboudarr          #+#    #+#             */
/*   Updated: 2020/05/26 14:55:00 by hboudarr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>
# include <errno.h>
# include <stdlib.h>

size_t			ft_strlen(const char *s);
char			*ft_strcpy(char *dst, char const *src);
int				ft_strcmp(const char *s1, const char *s2);
ssize_t			ft_write(int fd, const void *buf, size_t count);
ssize_t 		ft_read(int fd, void *buf, size_t count);
char 			*ft_strdup(const char *s);

#endif
