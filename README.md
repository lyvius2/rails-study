## My Rails Reference code

루비온레일즈를 공부하려고 강좌 따라서 만든 간단한 SNS입니다.  
강좌 사이트는 [플러닝](https://www.flearning.net)이며, Rails 5 버전 강좌를 토대로 만든 결과물입니다.

  - ruby 2.3.0
  - Rails 5.0.1.rc1
  - [Cloud9](http://c9.io), IntelliJ IDEA (ruby plug-in installed)

### Installation (Windows)

1.루비 설치  
2.gem의 소스 원본 설정
```
gem sources --add http://rubygems.org
```
3.이 [웹사이트](https://gist.github.com/luislavena/f064211759ee0f806c88)의 내용을 참고하여 gem의 버전 업데이트  
4.레일즈 설치 (--pre : 최신 버전으로 설치 옵션)
```
gem install rails --pre
```
5.bundler 설치
```
gem install bundler
```
6.웹 애플리케이션 구동에 필요한 라이브러리 설치 (Gemfile에 의존성 적시)
```
bundle install
```
7.GraphicsMagick 및 ImageMagick 설치
* [GraphicsMagick Download](ftp://ftp.graphicsmagick.org/pub/GraphicsMagick/windows/)
* [ImageMagick Download](http://www.imagemagick.org/script/binary-releases.php)

8.DB Scheme 마이그레이션
```
rails db:migrate
```
9.start the server.
```
rails s
```

유닉스 기반 환경에서는 좀 더 쉽게 구성할 수 있음.

### Plugins

레일즈 5 기본 외 추가로 설치한 플러그인

* devise (보안, 로그인 처리)
* carrierwave (이미지 업로드)
* mini_magick (이미지 리사이징)

### Command

자주 사용했던 명령어들.

* 프로젝트 생성
```sh
rails new 프로젝트
```
* 컨트롤러 생성
```sh
rails g 컨트롤러
```
* 모델 생성
```sh
rails g 모델
```
* 마이그레이션 파일 생성 (Camel Case 권장)
```sh
rails g migration 마이그레이션_파일명
```
* DB 마이그레이션
```sh
rails db:migrate
```
* 라우트 세팅 확인
```sh
rails routes
```
* 레일즈 콘솔 진입
```sh
rails c
```
