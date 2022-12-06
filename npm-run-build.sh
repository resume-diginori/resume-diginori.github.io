
export NODE_OPTIONS=--openssl-legacy-provider
npm run build
rm -rf docs
cp -rf dist docs
