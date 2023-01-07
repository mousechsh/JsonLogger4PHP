file ext | memo
=========+---------------------------------------------------------------------------
.cer.pem | single certificate file, privacy-enhanced mail package
.crt.pem | fullchain certificate list file, privacy-enhanced mail package
.csr.pem | certificate signing request, privacy-enhanced mail package
.crl.pem | certificate revocation list, privacy-enhanced mail package
.key.pem | single private key file, privacy-enhanced mail package
.pk.pem  | single public key file, privacy-enhanced mail package
.pfx.der | public key cryptography standards #12, distinguished encoding rules format

file                       | expire time
===========================+------------
mousechsh.ca.cer.pem       | 2023-01-26
mousechsh.cer.pem          | 2023-01-26
mousechsh.crt.pem          | 2023-01-26
mousechsh.key.pem          | 2023-01-26
mousechsh.pk.pem           | 2023-01-26
MouseChshCA/ca.cer.pem     | 2022-10-26
MouseChshCA/ca.crl.pem     | 2022-10-01
MouseChshCA/ca.key.pem     | 2022-10-26
MouseChshCA/client.cer.pem | 2022-10-26
MouseChshCA/client.key.pem | 2022-10-26
MouseChshCA/client.pfx.der | 2022-10-26


OpenSSL
可以用XCA替代

初始化空间
<<< cd.>MouseChshCA\index.txt
<<< cd.>MouseChshCA\crlnumber
<<< echo 00>MouseChshCA\serial
<<< mkdir MouseChshCA\certs
<<< mkdir MouseChshCA\private
<<< mkdir MouseChshCA\newcerts
<<< mkdir MouseChshCA\crl
自签名
<<< openssl genrsa -out MouseChshCA\ca.key.pem 2048
<<< openssl req -new -key MouseChshCA\ca.key.pem -out MouseChshCA\ca.csr.pem -subj /C=CN/ST=Shanghai/O=MouseChsh/OU=CA/CN=MouseChshRootCA/emailAddress=admin@mousechsh.com
<<< openssl ca -selfsign -in MouseChshCA\ca.csr.pem -out MouseChshCA\ca.cer.pem -days 365
不触发数据库直接生成证书 <<< openssl req -new -x509 -key MouseChshCA\ca.key.pem -out MouseChshCA\ca2.cer.pem -days 365 -subj /C=CN/ST=Shanghai/O=MouseChsh/OU=CA/CN=MouseChshRootCA/emailAddress=admin@mousechsh.com
签发证书
<<< openssl genrsa -out  MouseChshCA\client.key.pem 2048
<<< openssl req -new -out MouseChshCA\client.csr.pem -key MouseChshCA\client.key.pem
<<< openssl x509 -req -in MouseChshCA\client.csr.pem -out MouseChshCA\client.cer.pem -signkey MouseChshCA\client.key.pem -CA MouseChshCA\ca.cer.pem -CAkey MouseChshCA\ca.key.pem -CAcreateserial -days 365
验证证书
<<< openssl verify -CAfile MouseChshCA\ca.cer.pem MouseChshCA\client.cer.pem
<<< openssl pkcs12 -export -clcerts -in MouseChshCA\client.cer.pem -inkey MouseChshCA\client.key.pem -out "MouseChshCA\client(pwd=123456).p12"
吊销证书
<<< openssl -revoke MouseChshCA\client.cer.pem
<<< echo 01>MouseChshCA\crlnumber
<<< openssl ca -gencrl -out MouseChshCA\ca.crl.pem
