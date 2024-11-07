/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puthex.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/05 11:24:26 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/07 16:58:10 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_puthex2(unsigned int number, int X);

int	ft_puthex(va_list va_l, int X)
{
	return (ft_puthex2(va_arg(va_l, unsigned int), X));
}

int	ft_puthex2(unsigned int number, int X)
{
	char	*base;
	int		count;
	int		n;

	n = 0;
	count = 0;
	if (X)
		base = "0123456789ABCDEF";
	else
		base = "0123456789abcdef";
	if (number > 15)
	{
		n = ft_puthex2(number / 16, X);
		if (n == -1)
			return (-1);
		else
			count += n;
	}
	if (ft_putchr(base[(number % 16)]) == -1)
		return (-1);
	else
		count++;
	return (count);
}
