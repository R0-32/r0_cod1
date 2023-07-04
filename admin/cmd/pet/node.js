sudo apt update
sudo apt upgrade
sudo apt install build-essential curl
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install gl-react@^4.0.0 gl-react-dom@^4.0.0
npm install --save-dev glslify glslify-loader
sudo npm install -g create-react-app
npx create-react-app shader-project

create-react-app reactapp
cd reactapp
npm start 0.0.0.0

// package.json
"homepage": "https://R0-32.github.io/shader-art-page-one-react"
// в раздел scripts:
"predeploy": "npm run build",
"deploy": "gh-pages -d build"

// terminal
npm install --save-dev gh-pages
git branch gh-pages
git checkout gh-pages
npm run deploy





Success! Created reactapp at /root/reactapp
Inside that directory, you can run several commands:

  npm start
    Starts the development server.

  npm run build
    Bundles the app into static files for production.

  npm test
    Starts the test runner.

  npm run eject
    Removes this tool and copies build dependencies, configuration files
    and scripts into the app directory. If you do this, you can’t go back!

We suggest that you begin by typing:

  cd reactapp
  npm start
