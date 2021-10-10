# to start
ansible-playbook setup.yaml --extra-vars='variable_host=instance_name_from_etc_ansible_hosts' --private-key=~/.ssh/pravate_key.pem -vvvv

# ansible_playbook

After instalation
1) passwd
2) su lbejiuk
3) google-authenticator # for 2fa
4) Uncomment
  /etc/ssh/sshd/sshd_conf # for 2fa
5) systemctl start knockd.service
6) systemctl start my_firewall.service
7) systemctl restart ssh.service
8) vim => :PlugInstall
