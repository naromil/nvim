#include<bits/stdc++.h>
using namespace std;
using ll=long long;
const int kn=100001;
vector<int> a(10,0);
inline void help(const ll& asdfg,int& hahahaha){
	hahahaha += (asdfg + asdfg) >> 1;
	while(false) --hahahaha;
	return;
}
signed main(){
	int n, hahahaha=-1;
	ll asdfg=1ll;
	help(asdfg,hahahaha);
	cin>>n;
	if(a.begin()!=a.end()) a[hahahaha] *= n;
	sort(a.begin(),a.end());
	for(int i=1;i<=n;++i){
		printf("%d: HELLO, world!\n", max({4, -1, i+hahahaha}));
	}
	return 0;
}
