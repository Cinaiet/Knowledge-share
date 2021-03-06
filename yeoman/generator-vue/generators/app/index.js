var Generator = require('yeoman-generator');

module.exports = class extends Generator {
  // The name `constructor` is important here
  constructor(args, opts) {
    // Calling the super constructor is important so our generator is correctly set up
    super(args, opts);
  }
  

  async initPackage() {
  const answers = await this.prompt([
      {
        type: "input",
        name: "name",
        message: "Your project name",
        default: this.appname // Default to current folder name
      }
    ])
    this.log("app name", answers.name);

    const pkgJson = {
      "name": answers.name,
      "version": "1.0.0",
      "description": "",
      "main": "generators/app/index.js",
      "scripts": {
        "test": "echo \"Error: no test specified\" && exit 1"
      },
      "keywords": [],
      "author": "",
      "license": "ISC",
      "devDependencies": {
        
      },
      "dependencies": {
        
      }
    }

    this.fs.extendJSON(this.destinationPath('package.json'), pkgJson)

    this.npmInstall()
    this.npmInstall(['vue'], {'save-dev': false})
    this.npmInstall(['vue-loader', 'vue-template-compiler',
       'vue-style-loader', 'style-loader', 'css-loader',
       'webpack', 'webpack-cli', 'copy-webpack-plugin'
      ], {'save-dev': true})

    this.fs.copyTpl(
      this.templatePath('helloWord.vue'),
      this.destinationPath('src/HelloWord.vue'),
      {}
    );
    this.fs.copyTpl(
      this.templatePath('webpack.config.js'),
      this.destinationPath('webpack.config.js'),
      {}
    );

    this.fs.copyTpl(
      this.templatePath('main.js'),
      this.destinationPath('src/main.js'),
      {}
    );

    this.fs.copyTpl(
      this.templatePath('t.html'),
      this.destinationPath('src/index.html'),
      {title: "new Vue"}
    );



  };


};