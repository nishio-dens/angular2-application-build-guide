# Angularアプリケーション構築ガイド

Angular初学者向けの入門書を作成します。

## コンパイルの仕方

本書はRe:VIEWを利用しています。
Ruby 及び Bundler を導入している前提ですが、以下コマンドでコンパイルが可能です。

```
bundle install # review及びその他もろもろライブラリ導入
bundle exec rake build_all # Web / EPUB / PDF を同時に生成する

bundle exec rake clean # 不必要なファイルを消すときに利用する
bundle exec rake web # Webのみ出力する際に利用する
bundle exec rake pdf # PDFのみ出力する際に利用する
bundle exec rake epub # EPUBのみ出力する際に利用する
```

なお、PDFをコンパイルするためには、Latexの導入が必要です。
