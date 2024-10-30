/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 12:06:35 by aghlimi           #+#    #+#             */
/*   Updated: 2024/10/30 12:14:50 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_putnbr(unsigned int number, int isuns)
{
	long num;
	int count;

	count = 0;
	if (isuns)
	{
		num = number;
	}
	else
	{
		num = (int)number;
	}
	if (num < 0)
	{
		count += ft_putchar('-');
		num = -num;
	}
	if (num > 9)
		count += ft_putnbr(num / 10, isuns);
	count += ft_putchar(num % 10 + '0');
	return (count);
}
