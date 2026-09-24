echo "==========================="
echo "Отчет о системе от $(date)"
echo "==========================="
echo ""


echo "---Имя хоста---"
hostname
echo ""


echo "--- IP-address (without loopback) ---"
ip -brief a | grep -v "lo"
echo ""

echo "---Disk---"
df -h /
echo ""


echo "---pam---"
free -h
echo "====================="
