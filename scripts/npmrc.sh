echo "@mojaloop:registry=https://mojaloop.jfrog.io/mojaloop/api/npm/npm-local/" >> ~/.npmrc
echo "//https://mojaloop.jfrog.io/mojaloop/api/npm/npm-local/:_password=$_password" >> ~/.npmrc
echo "//https://mojaloop.jfrog.io/mojaloop/api/npm/npm-local/:username=$username" >> ~/.npmrc
echo "//https://mojaloop.jfrog.io/mojaloop/api/npm/npm-local/:email=$email" >> ~/.npmrc
echo "//https://mojaloop.jfrog.io/mojaloop/api/npm/npm-local/:always-auth=true" >> ~/.npmrc