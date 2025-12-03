#현재 working directory, staging area 상태 확인
git status

# .은 모든 수정/추가 사항 add
git add .

#특정파일만 add할 경우(경로까지 포함)
git add test_folder/test1.txt

#commit을 통해 메시지 타이틀과 메시지내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
#git commit만 입력하고 엔터시 vi모드 -> 첫줄: 타이틀, 두번째줄부터 내용 -> :wq저장 후 종료 시 커밋 ID생성
git commit

#commit 이력 확인   //원래 head보다 아래만 조회
git log  
# 한줄로 제목만
//git log --oneline
#head하단의 로그만 보이는 것이 아니라, 모든 commit이력을 조회
#head: 현재 사용(chckout)하고 있는 commitID를 의미 //모든 로그 조회 //head상단에있는거도 나온다
git log --all

HEAD: 현재 내가 있는 위치, 어떤 코드를 바라모고 있나 //chekout하고 있는 곳

remote하면 origin이 멈춰있는다
반대로 origin에 push해서 내가(main)pull이 아니라 path로 당겨오면 내께 남아이;ㅆ을 수 있다

#원격저장소로 업로드
git push origin 브랜치명
#충돌발생 시 충돌무시하고, 로컬기준으 코드를 원격에 덮어쓰기(절대 사용하지 말것)
git push origin 브랜치명 --force //하지 마라

 
git staturs: workingdirectory, staging 현재 작업 디렉토리와 area상태 보여줌
git log: rocal repasitoty 커밋 히스토리

add + commit = git commit am ""

로컬: main 현재
원격: origin main 현재 or 위 or 아래 

fetch: 원격의 변경사항을 가져오는 것 --> log --all하면 head위에 있는 origin main 있는 곳도 나온다

#특정 commit ID로의 전환
git checkout 커밋ID 
#특정 브랜치로의 전환
git checkouot 브랜치명

#pull은 원격사항을 local로 내려받는것(fetch+merge)
git pull origin main

#fetch는 변경사항을 local가져오되, 병합하지 않는 것.
git fetch origin main

git diff commitID1 commitID2

#commitID간 또는 브랜치 사이의 비교 명령어
git diff commitID1 commitID2
git diff 브랜치명1 브랜치명2

#가장 최신의 커밋 취호(head위치)
git reset head~1
git reset head

#이미 push commit사항을  되돌리는 새로운 commit 생성 (지워지는 것이 아님)
git revert 커밋ID

#작업 중인 사항을 임시 저장
git stash
#임시 저장한 작업사항을 다시 적용
git stash pop
#저장한 작업목록 조회
git stash list
#저장한 목록 전체 삭제
git stash clear

#가장 최신의 commitID에 tag가 명시
git tag 태그버전명(v1.10.4)
#원격 repo에 해당 tag의 release 생성
git push origin 태그버전명
#태그 목록 조회
git tag


# 브랜치 생성
#현재 checkout 되어있는 브랜치를 기준으로 새로운 브랜치 생성
git branch feat/member/_list    ///feat부터 이름
#브랜치 목록조회
git branch 
#특정 브랜치로 전환
git checkout 브랜치명
#브랜치생성과 전환을 동시에
git checkout -b 브랜치명
#로컬브랜치 삭제(원격은 별도로 삭제)
git branch -D 브랜치명


실습1.
1.회원가입을 담당
2.main checkout 및 pull
3.feat브랜치 생성
4.commit ID 2개 정도 임의로 생성
5.origin/feat1에 push (코드 작업 후)
6.한번 쓴 branch는 가급적 다시 사용하지 말 것   ----------->
7.PR생성해서 main merge
//로컬의 main브랜치에서는 작업하지 않는다 main에서 main으로 push하지 않는다. 
 사이드 branch에서 원격origin/feat으로 push.
 원격 origin/feat에서 원격main branch에 PR로 merge

 PR 시 충돌이 보통 난다
  1.로컬해결 =>feat에 원격 main(다른 팀원이 올린 것) pull로 당겨온다 =>충돌 해결 후 origin/feat로 push 
  2. ui해결


  6-2. 똑같이 돌아가는데 로컬, 원격에서 branch삭제, 이름 바꿔서 만들고 그대로 진행

  처음 clone 받아올 때 
  git clone --mirror 기존원격레포주소 // 브랜치 이전 이력 싹 다 받아옴 
  git remote set-url origin
  git push --mirror

