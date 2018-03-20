/*
** EPITECH PROJECT, 2018
** ASM_minilibc_2017
** File description:
** test_strcasecmp
*/

#include <criterion/criterion.h>

Test(my_strcasecmp, easy)
{
	char    motA[100] = "Bravo";
	char	motB[100] = "Bravo";
	int	result = strcasecmp(motA, motB);

	cr_assert_eq(result, 0);
}

Test(my_strcasecmp, medium)
{
	char    motA[100] = "Bravo";
	char	motB[100] = "bravo";
	int	result = strcasecmp(motA, motB);

	cr_assert_eq(result, 0);
}

Test(my_strcasecmp, hard)
{
	char    motA[100] = "Bravo";
	char	motB[100] = "bRAVO";
	int	result = strcasecmp(motA, motB);

	cr_assert_eq(result, 0);
}


Test(my_strcasecmp, hard2)
{
	char    motA[100] = "azertyuiopqsdfghjklmwxcvbn";
	char	motB[100] = "AZERTYUIOPQSDFGHJKLMWXCVBN";
	int	result = strcasecmp(motA, motB);

	cr_assert_eq(result, 0);
}

Test(my_strcasecmp, hard3)
{
	char    motA[100] = "AZERTYUIOPQSDFGHJKLMWXCVBN";
	char	motB[100] = "azertyuiopqsdfghjklmwxcvbn";
	int	result = strcasecmp(motA, motB);

	cr_assert_eq(result, 0);
}