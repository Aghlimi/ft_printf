/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putptr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 11:30:46 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/07 16:58:43 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_putptr2(void *ptr, int x);

int	ft_putptr(va_list va_l, int x)
{
	return (ft_putptr2(va_arg(va_l, void *), x));
}

int	ft_putptr2(void *ptr, int x)
{
	int	count;
	int	n;

	count = 0;
	if (x)
	{
		count = write(1, "0x", 2);
		if (count == -1)
			return (-1);
	}
	if ((unsigned long long)ptr > 15)
	{
		n = ft_putptr2((void *)((unsigned long long)(ptr) / 16), 0);
		if (n == -1)
			return (-1);
		count += n;
	}
	n = ft_putchr("0123456789abcdef"[(unsigned long long)(ptr) % 16]);
	if (n == -1)
		return (-1);
	count += n;
	return (count);
}
