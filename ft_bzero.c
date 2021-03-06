/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cel-mhan <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/14 03:48:10 by cel-mhan          #+#    #+#             */
/*   Updated: 2021/11/14 23:19:03 by cel-mhan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_bzero(void *s, size_t n)
{
	char	*buffer;
	size_t	i;

	i = 0;
	buffer = (char *)s;
	while (i < n)
	{
		buffer[i] = 0;
		i++;
	}
}
