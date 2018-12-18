
#include <iostream>
using namespace std;


extern void count(int n);
extern void countDown(int n);
extern int sum(int a, int b);
extern int fact(int n);

int main() {
	count(10);
	countDown(10);
	cout << sum(3,5) << '\n';
	for (int i = 0; i < 10; i++)
		cout << fact(5) << '\n';
}

