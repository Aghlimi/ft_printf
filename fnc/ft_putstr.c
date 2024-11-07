/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 09:49:06 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/05 11:33:58 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft.h"

int	ft_putstr(char *text)
{
	int	count;
	int	i;

	i = 0;
	count = 0;
	if (!text)
		count += ft_putstr("(null)");
	else
		while (text[i])
			count += ft_putchar(text[i++]);
	return (count);
}
