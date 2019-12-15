shasum -a 256 ser0410.bin  #校验文件的sha256值
ps aux #a 显示当前终端 u 以用户为主进行信息显示 x显示所有终端机（等价于-A）
ps -ef  #以标准的形式显示进程  二者等价
systemctl restart firewalld #重启系统服务
caffeinate -disu	    #系统不休眠
sudo killall airportd
[networksetup]
networksetup -listallnetworkservices
networksetup -setv6off 'USB 10/100/1000 LAN'
networksetup -setmanual 'USB 10/100/1000 LAN' 10.10.24.126 255.255.255.0 10.10.24.3
networksetup -setdnsservers 'USB 10/100/1000 LAN' 114.114.114.114 8.8.8.8

[ssh 相关command]
nohup python main.py >filename.out 2>&1 &  #ssh断开连接不停止服务
ssh root@10.20.2.7
ssh lizhongju@10.20.8.8
scp test root@192.168.120.204:/home #通过ssh上传本地文件到服务器
scp -r root@192.168.120.204:/home/test test/ #从远程复制目录到本地
firewall-cmd --add-port=10010/tcp --permanent  #配置防火墙策略，添加端口

[vim command]
\d         打开文件目录树
\s         文件搜索
\t         打开tarbar
w b $ ^		#单词尾、单词头、句尾、句首
:set number     #显示行号
:number         #跳转至某行
/   n  N        #查找 n 下一个 N 上一个
dd		#剪切一行
ndd		#剪切n+1行
dw		#从词首剪切单词
d0		#从当前光标剪切至行首
d$		#删除当前至末尾
y		#复制两行
yy		#复制一行
nyy		#复制n+1行
yw		#从光标处复制至单词末尾
p		#粘贴一行
u		#撤销操作
U		#撤销所有在前一个编辑行上的操作
gg		#跳转至文件首
G		#跳转至文件尾
$		#跳转至行尾
^		#跳转至行首
