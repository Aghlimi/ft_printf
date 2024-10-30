/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 12:55:45 by aghlimi           #+#    #+#             */
/*   Updated: 2024/10/30 12:55:46 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"
#include "libft.h"
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>

int	ft_formater(char c, va_list va_l)
{
	int	count;

	count = 0;
	if (c == 'c')
		count += ft_putchar(va_arg(va_l, int));
	else if (c == 's')
		count += ft_putstr(va_arg(va_l, char *));
	else if (c == 'p')
		count += ft_putptr(va_arg(va_l, void *), 1);
	else if (c == 'd' || c == 'i')
		count += ft_putnbr(va_arg(va_l, int), 0);
	else if (c == 'u')
		count += ft_putnbr(va_arg(va_l, unsigned int), 1);
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
		i++;
	}
	return (count);
}
int	main(int argc, char const *argv[])
{
	int c, v;
	int x = -1;
	c = ft_printf("%i %u\n",  x, x);
	v = printf("%i %u\n",  x, x);
	printf("%d\n%d", c, v);
	return (0);
}
