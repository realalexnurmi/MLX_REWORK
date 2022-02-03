/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   mlx_get_screen_size.m                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: enena <enena@student.21-school.ru>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/16 09:39:25 by enena             #+#    #+#             */
/*   Updated: 2021/02/26 14:58:11 by enena            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#import <AppKit/NSScreen.h>

void    mlx_get_screen_size(int *width, int *height)
{
	NSRect disp = [[NSScreen mainScreen] frame];
	*height = (int)disp.size.height;
	*width = (int)disp.size.width;
}
