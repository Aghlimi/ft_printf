/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft.h                                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aghlimi <aghlimi@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/30 09:53:07 by aghlimi           #+#    #+#             */
/*   Updated: 2024/11/06 09:46:54 by aghlimi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_H
# define FT_H
# include <stdarg.h>
# include <stdio.h>
# include <stdlib.h>
# include <unistd.h>

int	ft_putstr(char *text);
int	ft_putchar(char c);
int	ft_putptr(void *ptr, int x);
int	ft_putnbr(unsigned int number, int isuns);
int	ft_puthex(unsigned int number, int X);
#endif