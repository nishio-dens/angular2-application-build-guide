# Densan-labs.net にデプロイします。
#
# TODO: git push したらデプロイできるようにする
# TODO: CIからデプロイできるようにする
# 
# とりあえず今は暫定的にscpで対処します。

# 注意
# デプロイはrootディレクトリより、bundle exec rake deploy にて行ってください。
#

bundle exec rake build_all
if [ -e webroot/index.html ]; then
  echo "Deploy webroot to angular2.densan-labs.net"
  scp -r webroot densan-labs.net:/data/www/angular2/docs/ 
  scp ./dist/index.html densan-labs.net:/data/www/angular2/dist/index.html
else
  echo "Failed to deploy webroot"
fi

if [ -e book.pdf ]; then
  echo "Deploy book.pdf to dist.angular2.densan-labs.net"
  scp book.pdf densan-labs.net:/data/www/angular2/dist/angular2-application-build-guide.pdf
else
  echo "Failed to deploy book.pdf"
fi

if [ -e book.epub ]; then
  echo "Deploy book.epub to dist.angular2.densan-labs.net"
  scp book.epub densan-labs.net:/data/www/angular2/dist/angular2-application-build-guide.epub
else
  echo "Failed to deploy book.epub"
fi
