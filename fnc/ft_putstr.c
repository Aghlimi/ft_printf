/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 09:49:06 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/07 16:58:34 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_putstr2(char *text);

int	ft_putstr(va_list va_l)
{
	return (ft_putstr2(va_arg(va_l, char *)));
}

int	ft_putstr2(char *text)
{
	int	i;

	i = 0;
	if (!text)
		return (write(1, "(null)", 6));
	else
		while (text[i])
			if (ft_putchr(text[i++]) == -1)
				return (-1);
	return (i);
}
