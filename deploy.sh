set -e
npm run build
cd dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:ladybuggy89/pogodynka.git master:gh-pages

cd -

