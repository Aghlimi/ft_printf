/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 12:55:45 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/07 14:36:39 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_formater(char c, va_list va_l)
{
	int	count;

	count = 0;
	if (c == 'c')
		return (ft_putchar(va_arg(va_l, int)));
	else if (c == 's')
		return (ft_putstr(va_arg(va_l, char *)));
	else if (c == 'p')
		return (ft_putptr(va_arg(va_l, void *), 1));
	else if (c == 'd' || c == 'i' || c == 'u')
		return (ft_putnbr(va_arg(va_l, int), c == 'u'));
	else if (c == 'x' || c == 'X')
		return (ft_puthex(va_arg(va_l, unsigned int), c == 'X'));
	else if (c == '%')
		return (ft_putchar('%'));
	return (count);
}

int	ft_printf(const char *format, ...)
{
	va_list	valist;
	int		i;
	int		count;

	va_start(valist, format);
	i = 0;
	count = 0;
	while (format[i])
	{
		if (format[i] == '%')
			count += ft_formater(format[++i], valist);
		else
			count += ft_putchar(format[i]);
		if (format[i])
			i++;
	}
	return (count);
}
