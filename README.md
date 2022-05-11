# terraform-natgateway-ec2

TerraformでVPC、NAT Gateway、EC2×2 の作成

鍵を生成する
```
ssh-keygen -t rsa -f example -N ''
```

環境を生成
```
terraform apply
```

環境を削除するとき
```
terraform destroy
```

1. パブリックサブネットのEC2にSSH接続

```
ssh -i example ec2-user@<Public IP>
```

2. パブリックサブネットのEC2に鍵を送信する & プライベートサブネットのEC2にSSH接続

```
scp -i example example ec2-user@<パブリックサブネットのEC2のPublic IP>:/tmp/
```

```
ssh -i example ec2-user@<パブリックサブネットのEC2のPublic IP>
```

```
cd /tmp
```

```
ssh -i example ec2-user@<プライベートサブネットのEC2のPrivate IP>
```


ssh -i example ec2-user@54.178.230.95

ssh -i example ec2-user@10.0.1.76

nat_gateway_private_ip = "10.0.0.100"
nat_gateway_public_ip = "35.74.97.195"
public_ip = "54.178.230.95"