/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 09:49:06 by aghlimi           #+#    #+#             */
/*   Updated: 2024/10/30 09:56:47 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_putstr(char *text)
{
	int	count;

	count = 0;
	if (!text)
		count += ft_putstr("(null)");
	else
		while (*text)
		{
			count += ft_putchar(*text);
			text++;
		}
	return (count);
}
