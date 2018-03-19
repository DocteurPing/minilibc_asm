/*
** EPITECH PROJECT, 2018
** ASM_minilibc_2017
** File description:
** test_strchr
*/

#include <criterion/criterion.h>

Test(my_strchr, easy)
{
	char    motA[100] = "Bravo";
	char    *pointeurLettreA = strchr(motA, 'a');

	*pointeurLettreA = 'e';
	cr_assert(motA, "Brevo");
}

Test(my_strchr, nullbyte)
{
	char    motA[100] = "Bravo";
	char    *pointeurLettre0 = strchr(motA, 0);
	
	*pointeurLettre0 = 'c';
	cr_assert(motA, "Bravoc");
}