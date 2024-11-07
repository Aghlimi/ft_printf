/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 12:55:45 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/07 16:56:49 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_formater(char c, va_list va_l)
{
	int	count;

	count = 0;
	if (c == 'c')
		return (ft_putchar(va_l));
	else if (c == 's')
		return (ft_putstr(va_l));
	else if (c == 'p')
		return (ft_putptr(va_l, 1));
	else if (c == 'd' || c == 'i' || c == 'u')
		return (ft_putnbr(va_l, c == 'u'));
	else if (c == 'x' || c == 'X')
		return (ft_puthex(va_l, c == 'X'));
	else if (c == '%')
	{
		if (ft_putchr('%') == -1)
		{
			va_end(va_l);
			return (-1);
		}
		else
			return (1);
	}
	return (count);
}

int	ft_if(va_list va_l, const char *c, int *i)
{
	int	count;
	int	number;

	count = 0;
	if (c[*i] == '%')
	{
		number = ft_formater(c[++(*i)], va_l);
		if (number == -1)
			return (-1);
		count += number;
	}
	else
	{
		number = ft_putchr(c[*i]);
		if (number == -1)
			return (-1);
		count += 1;
	}
	return (count);
}

int	ft_printf(const char *format, ...)
{
	va_list	valist;
	int		i;
	int		count;
	int		number;

	number = 0;
	va_start(valist, format);
	i = 0;
	count = 0;
	while (format[i])
	{
		number = ft_if(valist, format, &i);
		if (number == -1)
			return (va_end(valist), -1);
		count += number;
		if (format[i])
			i++;
	}
	return (count);
}
