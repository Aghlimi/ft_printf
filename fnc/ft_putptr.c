/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putptr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 11:30:46 by aghlimi           #+#    #+#             */
/*   Updated: 2024/10/30 11:56:36 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_putptr(void *ptr, int x)
{
	int	count;

	count = 0;
	if (x)
		count = ft_putstr("0x");
	if ((unsigned long long)ptr > 15)
		count += ft_putptr((void *)((unsigned long long)(ptr) / 16), 0);
	count += ft_putchar("0123456789abcdef"[(unsigned long long)(ptr) % 16]);
	return (count);
}
