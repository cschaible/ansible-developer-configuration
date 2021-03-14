# Ansible developer machine
The ansible scripts in this repository can be used to configure an Ubuntu system for software development.

# Install ansible
```bash
sudo apt update
sudo apt install ansible vim
```

# Configuration

The default ansible configuration with explained options is located at `/etc/ansible/ansible.cfg`.

Add the following to /etc/ansible/hosts:
```
[local]
127.0.0.1
```

Set the username in `configs/playbook.yml`.

# Run
Run the run.sh shell script.

# Manuall installation steps
1. Install sdkman (curl -s "https://get.sdkman.io" | bash)
2. Install JDK 11 (sdk install java 11.0.10-open)
3. Configure fs.inotify.max_user_watches = 524288 in /etc/sysctl.conf and run sudo sysctl -p --system
4. Install azure storage-explorer (snap install storage-explorer)
5. Adjust git user details (in /home/<user>/.config/git/config)
6. Copy the vpn files to ~/.cert and configure VPN
7. Install IntelliJ via jetbrains toolbox (/opt/jetbrains/jetbrains-toolbox)
8. Install npm by running: nvm install 12.16.1
9. Install python black formatter by running: pip3 install black
10. In VS Code set telemetry.enableTelemetry and enable-crash-reporter to false

# License
The ansible scripts are licensed under the MIT license ([LICENSE-MIT](LICENSE-MIT) or [http://opensource.org/licenses/MIT]).