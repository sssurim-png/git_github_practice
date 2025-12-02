# . 은 모든 변경 사항을 의미. 특정파일마나 add하는 것도 가능
# add는 staging area로 변경사항을 이동
git add .

#commit 은 변경이력(commitId) 발생.
#commit은 staging area는 비워지고, local repository에 변경이력 발생
git commit-m "메세지"

# 로컬에 존재하ㄴ는 브랜치를 가지고 push
git push origin 브랜치명

# git의 인증방법 2가지
# 1. 웹을 통한 인증(토큰 간접 발급) 2.직접토큰 발급

public: 읽기o, 쓰기x(권한체크)
=>내 repository
private: 읽기o, 쓰기o


로컬에서 토큰을 발급 받아야함 
1. 수동으로 발급
2. push하면 로그인했냐면서 자동으로 발급(oauth방식)

#사용자지정
git config --global user.name "유저명"
git config --global user.name "email명"
#git 설정정보 조회
git config --list

#git프로젝트 생성방법 2가지
1. 회사에 처음 입사했을 때 =>clone만
2. 내 개인프로젝트를 로컬에서 진행하다가 업로드 하는 경우
 #2-1)github repo생성 -> clone만
 #2-2)github repo생성 + 내 로컬에 프로젝트를 github upload
 #1.원격에서 repo생성 후 clone <<추천
 #2.로컬에 이미 만들어진 프로젝트 github에 업로드
 #2-1 git init
#2-2)원격지 주소를 추가
 git remote add origin 원격지 주소


원격 끊겼어도 정보 로컬에 남아있는다(.git)
 원격정보
 히스토리(commit이력)
 =>git삭제 시 -> 다시만들면 git재생성(깡통)

 .git폴더가 있는 곳에서 init이런걸 써야된다*
-원격지 주소 -clone 받으면 남의 주소를 내 주소로 변경하거나(히스토리도 남기고) 기존에 있는거 삭제
-히스토리  

**남의 레포 가져오기
 #다른 repo에서 clone을 받아 나의repo로 옮기기 //위치는  .git에서 하기 꼭
 #1.커밋이력 그대로 가져가기
 git clone 남레포주소 
 git remote set-url origin 내레포주소 #원격지 주소 변경
 git push origin main

 #2.커밍 이력 없이 가져가기
 #.git폴더 삭제
 git init  // 깡통만들기!! 내꺼로 .git 바꾸기 위해서
 git remote add origin 내 원격지 주소 //신규추가
 git checkout -b main #main브랜치 생성 및 변경
 #git add, git commit, git push작업진행
 