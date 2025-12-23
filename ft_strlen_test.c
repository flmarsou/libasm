#include <stdio.h>
#include <string.h>

extern size_t	ft_strlen(const char *s);

int	main()
{
	const char	*str1 = "Hello, World";
	const char	*str2 = "";
	const char	*str3 = "a";
	const char	*str4 = "The quick brown fox jumps over the lazy dog";

	printf("str1 = \"%s\"\n", str1);
	printf("strlen(str1) = %lu | ft_strlen(str1) = %lu\n\n", strlen(str1), ft_strlen(str1));

	printf("str2 = \"%s\"\n", str2);
	printf("strlen(str2) = %lu | ft_strlen(str2) = %lu\n\n", strlen(str2), ft_strlen(str2));

	printf("str3 = \"%s\"\n", str3);
	printf("strlen(str3) = %lu | ft_strlen(str3) = %lu\n\n", strlen(str3), ft_strlen(str3));

	printf("str4 = \"%s\"\n", str4);
	printf("strlen(str4) = %lu | ft_strlen(str4) = %lu\n\n", strlen(str4), ft_strlen(str4));

	return (0);
}
