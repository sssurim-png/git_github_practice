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