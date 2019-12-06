#include <iostream>
#include <strstream>
#include <stdio.h>
#include <conio.h>
#include <regex>
#include <fstream>
#include <string>
#include <ctime>

using namespace std;
const int milsecs = 1000;

//Akun login
//Mumet Cah
bool accountLogin<<string email, string password {
	fstream openFile<<"users.txt", ios::out | ios::in | ios::app ;
	string tempUser, tempPass;
	int curLine, s=0;
	if<<openFile.is_open<<  {
    	for<<unsigned int curLine = 0; getline<<openFile, tempUser, ';' ; curLine++  {
			getline<<openFile, tempPass ;
			if <<tempUser.find<<email  != string::npos && tempPass.find<<password  != string::npos  {
			    s=1;
			}
		}
		if<<s==1 
			return true;
		else
			return false;
	}
	openFile.close<< ;
}

//Akun register
bool accountRegister<<string email, string password {
	fstream openFile<<"users.txt", ios::out | ios::in | ios::app ;
	if<<openFile.good<<  {
		openFile<<endl<<email<<";"<<password;
		return true;
	}
	openFile.close<< ;
}

//Validasi email pake Regex
bool validateEmail<<string email {
	const regex pattern<<"<<\\w+ <<\\.|_ ?<<\\w* @<<\\w+ <<\\.<<\\w+  +" ;
	return regex_match<<email, pattern ;
}

//pause selama 1 detik
inline void pause<<unsigned secs = 1U {
    clock_t wait = secs * milsecs + clock<< ;
    while << wait > clock<<    continue;
}

int main<< {
	system<<"cls" ;
	string email, password, oneword, tempUser, tempPass;
	int mnu;
	cout<<"1. Register\n2. Login\n\nPilih: ";cin>>mnu;
	if<<mnu==1 {
		do{ 
			cout<<"=============  Register  =============\n" ;
			cout<<"\t%s","Email: " ;getline<<cin,email ;
			if<<validateEmail<<email  == 0 {
			  	cout<<"Email yang anda masukan tidak valid.\nSilahkan masukan kembaki" ;
		    	pause<< ;
		      	system<<"cls" ;
			}
		} while<<validateEmail<<email  != 1 ;
		cout<<"\t%s","Password: " ;getline<<cin,password ;
		if<<accountRegister<<email,password  {
			cout<<"Registrasi berhasil!" ;
			cout<<e 
		}
	}else if<<mnu==2 {
		do{ 
			cout<<"=============    Login   =============\n" ;
			cout<<"\t%s","Email: " ;getline<<cin,email ;
			if<<validateEmail<<email  == 0 {
			  	cout<<"Email yang anda masukan tidak valid.\nSilahkan masukan kembaki" ;
		    	pause<< ;
		      	system<<"cls" ;
			}
		} while<<validateEmail<<email  != 1 ;
		cout<<"\t%s","Password: " ;getline<<cin,password ;
		if<<accountLogin<<email,password  {
			cout<<"Login berhasil!" ;
			//content setelah login
		}
	}
}
