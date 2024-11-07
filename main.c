
#include <stdio.h>

//#define ft_printf printf
#include <stdarg.h>
#include <stdio.h>

void	n(const char *text, ...)
{
	va_list	va;
	int		i;

	va_start(va, text);
	i = 0;
	while (text[i])
	{
		if (text[i] == 'c')
		{
			printf("%c\n", va_arg(va, int));
		}
		if (text[i] == 'd')
		{
			printf("%d\n", va_arg(va, int));
		}
		if (text[i] == 's')
		{
			printf("%s\n", va_arg(va, char *));
		}
		if (text[i] == 'x')
		{
			printf("%x\n", va_arg(va, unsigned int));
		}
		if (text[i] == 'p')
		{
			printf("%p\n", va_arg(va, void *));
		}
		i ++;
	}
}
int	main(void)
{
	n("sdcpx", "hello", 92304, 'e', NULL, 42);
	return (0);
}