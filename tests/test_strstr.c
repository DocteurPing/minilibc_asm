/*
** EPITECH PROJECT, 2018
** ASM_minilibc_2017
** File description:
** test_strstr
*/

#include <string.h>
#include <criterion/criterion.h>

Test(my_strstr, easy)
{
	char *str;

	str = strstr("salut tout le monde", "tout");
	cr_assert(str, "tout le monde");
}

Test(my_strstr, no_match)
{
	char *str;

	str = strstr("salut tout le monde", "z");
	cr_assert_null(str);
}

Test(my_strstr, no_match_string_longer)
{
	char *str;

	str = strstr("salut tout le monde", "salut tout le monde!!!");
	cr_assert_null(str);
}