Sometimes you need to get a list of cpanel domains that exclude subdomains.

It's more of a quick oneliner than a script.

Safe for prod in case you're new :)

cat /etc/userdatadomains | while read domain; do echo $domain | grep -v "==sub==" | awk -F: '{print $1}';  done