module Hashid
  HASHES = {
		  /^[a-f0-9]{4}$/ => ["CRC-16","CRC-16-CCITT","FCS-16"],
		  /^[a-f0-9]{8}$/ => ["Adler-32","CRC-32","CRC-32B","FCS-32","GHash-32-3","GHash-32-5","FNV-132","Fletcher-32","Joaat","ELF-32","XOR-32"],
		  /^\+[a-z0-9\/\.]{12}$/ => ["Blowfish(Eggdrop)"],
		  /^[a-z0-9\/\.]{13}$/ => ["DES(Unix)","Traditional DES","DEScrypt"],
		  /^[a-f0-9]{16}$/ => ["MySQL323","DES(Oracle)","VNC","Half MD5","Oracle 7-10g","FNV-164","CRC-64"],
		  /^[a-z0-9\/\.]{16}$/ => ["Cisco-PIX(MD5)"],
		  /^\([a-z0-9\+\/]{20}\)$/ => ["Lotus Domino"],
		  /^_[a-z0-9\/\.]{19}$/ => ["BSDi Crypt"],
		  /^[a-f0-9]{24}$/ => ["CRC-96(ZIP)"],
		  /^[a-z0-9\/\.]{24}$/ => ["Crypt16"],
		  /^[0-9a-f]{32}$/ => ["MD5","MD4","MD2","NTLM","LM","RAdmin v2.x","RIPEMD-128","Haval-128","Tiger-128","Snefru-128","MD5(ZipMonster)","Skein-256(128)","Skein-512(128)"],
		  /^{SHA}[a-z0-9\/\+]{27}=$/ => ["SHA-1(Base64)","Netscape LDAP SHA"],
		  /^\$1\$[a-z0-9\/\.]{0,8}\$[a-z0-9\/\.]{22}$/ => ["MD5(Unix)","Cisco-IOS(MD5)","FreeBSD MD5"],
		  /^0x[a-f0-9]{32}$/ => ["Lineage II C4"], 
		  /^\$H\$[a-z0-9\/\.]{31}$/ => ["MD5(phpBB3)"],
		  /^\$P\$[a-z0-9\/\.]{31}$/ => ["MD5(Wordpress)","PHPass' Portable Hash"],
		  /^[a-f0-9]{32}:[a-z0-9]{2}$/ => ["osCommerce","xt:Commerce"],
		  /^\$apr1\$.{0,8}\$[a-z0-9\/\.]{22}$/ => ["MD5(APR)","Apache MD5"],
		  /^{smd5}.{31}$/ => ["AIX(smd5)"],
		  /^[a-f0-9]{32}:[0-9]{4}$/ => ["WebEdition CMS"],
		  /^[a-f0-9]{32}:.{5}$/ => ["IP.Board v2+","MyBB v1.2+"],
		  /^[a-z0-9]{34}$/ => ["CryptoCurrency(Adress)"],
		  /^[a-f0-9]{40}$/ => ["SHA-1","RIPEMD-160","Haval-160","SHA-1(MaNGOS)","SHA-1(MaNGOS2)","Tiger-160","HAS-160","Skein-256(160)","Skein-512(160)"],
		  /^\*[a-f0-9]{40}$/ => ["MySQL5.x","MySQL4.1"],
		  /^[a-z0-9]{43}$/ => ["Cisco-IOS(SHA256)"],
		  /^[a-f0-9]{32}:[^\\\/:*?\"\<\>\|]{1,15}$/ => ["Domain Cached Credentials 2"],
		  /^{SSHA}[a-z0-9\+\/]{38}={0,2}$/ => ["SSHA-1(Base64)","Netscape LDAP SSHA"],
		  /^[a-z0-9]{47}$/ => ["FortiOS"],
		  /^[a-f0-9]{48}$/ => ["Haval-192","Tiger-192","OSX v10.4","OSX v10.5","OSX v10.6"],
		  /^[a-f0-9]{51}$/ => ["Palshop CMS"],
		  /^[a-z0-9]{51}$/ => ["CryptoCurrency(PrivateKey)"],
		  /^{ssha1}[a-z0-9\.\$]{47}$/ => ["AIX(ssha1)"],
		  /^0x0100[a-f0-9]{48}$/ => ["MSSQL(2005)","MSSQL(2008)"],
		  /^\$md5,rounds=[0-9]+\$[a-z0-9\.\/]{0,8}(\$|\$\$)[a-z0-9\.\/]{22}$/ => ["MD5(Sun)"],
		  /^[a-f0-9]{56}$/ => ["SHA-224","Haval-224","Keccak-224","Skein-256(224)","Skein-512(224)"],
		  /^(\$2a|\$2y|\$2)\$[0-9]{0,2}?\$[a-z0-9\/\.]{53}$/ => ["Blowfish(OpenBSD)"],
		  /^S:[a-f0-9]{60}$/ => ["Oracle 11g"],
		  /^\$bcrypt-sha256\$.{5}\$[a-z0-9\/\.]{22}\$[a-z0-9\/\.]{31}$/ => ["BCrypt(SHA256)"],
		  /^[a-f0-9]{32}:[a-z0-9]{30}$/ => ["vBulletin >v3.8.5"],
		  /^[a-f0-9]{64}$/ => ["SHA-256","RIPEMD-256","Haval-256","Snefru-256","GOST R 34.11-94","Keccak-256","Skein-256","Skein-512(256)"],
		  /^[a-f0-9]{32}:[a-z0-9]{32}$/ => ["Joomla"],
		  /^[a-f0-9]{32}:[a-f0-9]{32}$/ => ["SAM(LM_Hash:NT_Hash)"],
		  /^\$episerver\$\*0\*[a-z0-9=\*+]{52}$/ => ["EPiServer 6.x <v4"],
		  /^{ssha256}[a-z0-9\.\$]{63}$/ => ["AIX(ssha256)"],
		  /^[a-f0-9]{80}$/ => ["RIPEMD-320"],
		  /^\$episerver\$\*1\*[a-z0-9=\*+]{68}$/ => ["EPiServer 6.x >v4"],
		  /^0x0100[a-f0-9]{88}$/ => ["MSSQL(2000)"],
		  /^[a-f0-9]{96}$/ => ["SHA-384","Keccak-384","Skein-512(384)","Skein-1024(384)"],
		  /^{SSHA512}[a-z0-9\+\/]{96}={0,2}$/ => ["SSHA-512(Base64)","LDAP(SSHA512)"],
		  /^{ssha512}[a-z0-9\.\$]{107}$/ => ["AIX(ssha512)"],
		  /^[a-f0-9]{128}$/ => ["SHA-512","Whirlpool","Salsa10","Salsa20","Keccak-512","Skein-512","Skein-1024(512)"],
		  /^[a-f0-9]{136}$/ => ["OSX v10.7"],
		  /^0x0200[a-f0-9]{136}$/ => ["MSSQL(2012)"],
		  /^\$ml\$.+$/ => ["OSX v10.8"],
		  /^[a-f0-9]{256}$/ => ["Skein-1024"],
		  /^grub\.pbkdf2\.sha512\..+$/ => ["GRUB 2"],
		  /^sha1\$[a-z0-9\/\.]{1,12}\$[a-f0-9]{40}$/ => ["SHA-1(Django)"],
		  /^\$S\$[a-z0-9\/\.]{52}$/ => ["SHA-512(Drupal)"],
		  /^\$5\$.{0,22}\$[a-z0-9\/\.]{43,69}$/ => ["SHA-256(Unix)"],
		  /^\$6\$.{0,22}\$[a-z0-9\/\.]{86}$/ => ["SHA-512(Unix)"],
		  /^\$sha\$[a-z0-9]{1,16}\$[a-f0-9]{64}$/ => ["Minecraft(AuthMe Reloaded)"],
		  /^sha256\$[a-z0-9\/\.]{1,12}\$[a-f0-9]{64}$/ => ["SHA-256(Django)"],
		  /^sha384\$[a-z0-9\/\.]{1,12}\$[a-f0-9]{96}$/ => ["SHA-384(Django)"],
		  /^[^\\\/:*?\"\<\>\|]{1,15}:[^\\\/:*?\"\<\>\|]{1,15}:[a-f0-9]{32}:[a-f0-9]{32}:{0,3}$/ => ["Domain Cached Credentials"],
		  /^\$scram\$.+$/ => ["SCRAM Hash"],
      /^[a-zA-Z0-9+]+={0,2}$/ => ["Base64"]
    }
  
  def HashID(hash)    
    hash = hash.strip.to_s
    possible_hashes = HASHES.select {|k,v| k === hash }
    Array(possible_hashes.values[0])
  end
  module_function :HashID
end