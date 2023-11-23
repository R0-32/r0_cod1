sudo apt-get install virtualbox virtualbox-ext-pack
sudo apt install audacity fancontrol gdebi fuse build-essential curl rlwrap python3 python3-pip jupyter-notebook python3-notebook python3-virtualenv  mesa-utils libglfw3-dev libglew-dev libglm-dev timeshift -y nodejs sublime-text

	fuse для запуска obsidian

	gdebi установка зум
	скачать деб файл
	даблклик по файлу

	Default applications
	Ctrl+Alt+T

	python3 -m venv myenv
	source myenv/bin/activate
	pip3 install jupyter
	jupyter-notebook --allow-root
	pip3 install --upgrade jupyter
	deactivate

	curl -s https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && sudo chmod +x /usr/local/bin/cht.sh

git config --global --edit
	[alias]
		acp = !git add . && git commit -m "auto-commit" && git push origin main


#wine
	sudo dpkg --add-architecture i386 
	sudo mkdir -pm755 /etc/apt/keyrings
	sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
	sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources
	sudo apt update
	sudo apt install --install-recommends winehq-stable


#cmd-short
	subl ~/.bashrc
		# Функция для вычисления использования памяти указанного процесса
		r0_mem() {
		  process=$1
		  result=$(ps aux | grep "$process" | awk '{sum+=$6} END {print sum}')
		  echo "scale=2; $result / 1024" | bc
		}
	source ~/.bashrc
	// r0_mem firefox