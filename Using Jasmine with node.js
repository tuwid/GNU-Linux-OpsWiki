Jasmine's node package consists of helpers for developing and running Jasmine tests with node.js.

You can install Jasmine using npm, locally in your project or globally, which allows the use of the CLI tool.

npm install -D jasmine
npm install -g jasmine

Initializing a project for Jasmine will create a spec directory and a json configuration file.

jasmine init

Customize spec/support/jasmine.json to get rid of any source and spec files you don't need the Jasmine runner to include.

Once you have set up your jasmine.json, you can start Jasmine by running:

jasmine


