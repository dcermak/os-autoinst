use base "installstep";
use strict;
use bmwqemu;

sub run()
{
	waitidle(15000);
#	waitstillimage(60,3600);
	waitgoodimage(1200);
        sendautotype "$password\t"; # root PW
        sendautotype "$password"; # root PW

        sendkey "tab"; # skip media check
        sendautotype "$realname\t"; # Test user
        sendautotype "$username\t"; # Test user
        sendautotype "$password\t"; # root PW
        sendautotype "$password"; # root PW

        sendkey "tab"; # skip media check
	sleep 1;
        sendkey "tab"; # skip media check
	sleep 1;
	sendkey "tab"; # skip media check
	sleep 1;
	sendkey "ret";


}

1;