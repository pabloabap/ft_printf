/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftprintf.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pabad-ap <pabad-ap@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/21 11:35:25 by pabad-ap          #+#    #+#             */
/*   Updated: 2023/10/29 23:13:43 by pabad-ap         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdlib.h>
# include <stddef.h>
# include <unistd.h>
# include <stdarg.h>
# include "./libft/libft.h"

int		ft_printf(char const *str, ...);
void	ft_char_formater(char c, int *str_len);
void	ft_str_formater(char *s, int *str_len);
void	ft_pointer_formater(unsigned long long int p, int *str_len);
void	ft_int_formater(int i, int *str_len);
void	ft_uint_formater(unsigned int u, int *str_len);
void	ft_hex_formater(unsigned int u, int *str_len);
void	ft_upperhex_formater(unsigned int u, int *str_len);

#endif
