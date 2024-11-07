/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 12:06:35 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/07 16:58:25 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_putnbr2(unsigned int number, int isuns);

int	ft_putnbr(va_list va_l, int isuns)
{
	return (ft_putnbr2(va_arg(va_l, unsigned int), isuns));
}

int	ft_putnbr2(unsigned int number, int isuns)
{
	long	num;
	int		count;
	int		n;

	count = 0;
	num = number;
	if (!isuns)
		num = (int)number;
	if (num < 0)
	{
		if (ft_putchr('-') == -1 && count++ != -1000)
			return (-1);
		num = -num;
	}
	if (num > 9)
	{
		n = ft_putnbr2(num / 10, isuns);
		if (n == -1)
			return (n);
		count += n;
	}
	if (ft_putchr(num % 10 + '0') == -1)
		return (-1);
	count++;
	return (count);
}
