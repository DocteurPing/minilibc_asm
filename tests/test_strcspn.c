/*
** EPITECH PROJECT, 2018
** ASM_minilibc_2017
** File description:
** test_strcspn
*/

#include <criterion/criterion.h>

Test(my_strcspn, easy)
{
	int len;
	len = strcspn("this is a test", "ab");
	cr_assert_eq(len, 8);
}

Test(my_strcspn, no_stop)
{
	int len;
	len = strcspn("this is a test", "z");
	cr_assert_eq(len, 14);
}

Test(my_strcspn, zero)
{
	int len;
	len = strcspn("this is a test", "t");
	cr_assert_eq(len, 0);
}

Test(my_strcspn, one)
{
	int len;
	len = strcspn("this is a test", "h");
	cr_assert_eq(len, 1);
}