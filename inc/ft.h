/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft.h                                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 09:53:07 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/07 16:57:30 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_H
# define FT_H
# include <stdarg.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>

int	ft_putstr(va_list val);
int	ft_putchar(va_list val);
int	ft_putptr(va_list val, int x);
int	ft_putnbr(va_list val, int isuns);
int	ft_puthex(va_list val, int X);
int	ft_putchr(char c);

#endif