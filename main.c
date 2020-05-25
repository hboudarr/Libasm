/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main2.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hboudarr <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/25 17:40:48 by hboudarr          #+#    #+#             */
/*   Updated: 2020/05/25 18:28:07 by hboudarr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
/*
void	check_strlen()
{
	char *s1 = "";
	char *s2 = "\0";
	char *s3 = "ABCDEF";

	printf("\nFT_STRLEN\n");
	printf("len : %d\n", strlen(s1));
	printf("len : %d\n", ft_strlen(s1));
}
*/
void	check_strcpy()
{
	char s1[] = "salut";
	char s2[] = "pouquoipourquoi";

	printf("\nFT_STRCPY\n");
	printf("%s\n", strcpy(s1, s2));
//	printf("%s\n", ft_strcpy(s1, s2));
}
/*
void	check_strcmp()
{
	char *s1 = "salut";
	char *s2 = "bonjourbonjour";

	printf("\nFT_STRCMP\n");
	printf("%d\n", strcmp(s1, s2));
	printf("%d\n", ft_strcmp(s1, s2));
}
*/	/*
void	check_write()
{
	char *test = "COUCOU";

	printf("\nFT_WRITE\n");
	printf("%zd\n", write(3, test, 6));
	printf("Value of error : %d\n", errno);
	printf("%zd\n", ft_write(3, test, 6));
	printf("Value of error : %d\n", errno);
}

void	check_read()
{
	int	fd;
	char	*str = "coucou";

	fd = open("./Makefile ", O_RDONLY);

	printf("\nFT_READ\n");
	printf("%zd\n", read(fd, &str, 2));
	printf("Value of error : %d\n", errno);
	printf("%zd\n", ft_read(fd, &str, 2));
	printf("Value of error : %d\n", errno);
}
*/

int main()
{
//	check_strlen();
	check_strcpy();
//	check_strcmp();
//	check_write();
//	check_read();
	return(0);
}
