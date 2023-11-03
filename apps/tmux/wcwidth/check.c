#define _XOPEN_SOURCE
#include <stdio.h>
#include <locale.h>
#include <wchar.h>

void print_wcwidth(wchar_t c)
{
  printf("wcwidth('%lc') == %d\n", c, wcwidth(c));
}

int main()
{
  setlocale(LC_CTYPE, "");
  print_wcwidth(0x41);    //1
  print_wcwidth(0x3b1);   //2
  print_wcwidth(0x3042);  //2
  print_wcwidth(0x258e);  //1
  print_wcwidth(0x1f43f); //2
  return 0;
}
