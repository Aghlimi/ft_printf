/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puthex.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/05 11:24:26 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/05 11:31:53 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_puthex(unsigned int number, int X)
{
	char	*base;
	int		count;

	count = 0;
	if (X)
		base = "0123456789ABCDEF";
	else
		base = "0123456789abcdef";
	if (number > 15)
		count += ft_puthex(number / 16, X);
	count += ft_putchar(base[(number % 16)]);
	return (count);
}
