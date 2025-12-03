
#pull과 fetch의 차이
fecth: 원격의 이력을 가져왔지만 head 위치는 내가 일하던 소스 그대로. 로컬에서는 내 워킹 디렉토리가 변경되지는 않는다. 현재 일하고 있는 곳에 그대로 있다
pull: 원격의 이력을 가져옴과 동시 head위치도 origin main으로 바뀐다 origin을 따라간다. 내가 보고있는 소스코드도 같이 이동한다. 소스코드가, 변경 사항이 눈에 보인다. 워킹 디렉토리도 같이 바뀐다
왜 fetch를 사용하는가: 같은 장소의 두개의 변경사항이 충돌하지 않는다. 합치지는 않는다. 다른게 뭔지 확인하고 변경한다.
pull:같은 장소의 두개의 변경사항이 하나로 합쳐져야한다 //충돌 위험
pull=fetch+merge
merge =병합  origin/main =>병합하겠다
diff= 차이. 브랜치로나 (main origin/main), 커밋 아이디끼리


#취소
1. workingdirectoty  --> 그냥 ctrl z
2. staging area-->UI  (git reset 또는 git restore --staged .)
3. local repo --> commitID발생 --> commitID취소
4. origin repo --> push까지 --> 취소? 올라간 순간 지우는 것x --> abcd에서 d변경하고 싶으면 c와 내용이 같은 f를 만들기 but 다 남아있다 reverse?

hot fix 지엽적 버그 고침
원복: revert로 뒤집어서 원상복구 --버그 났는데 버그 난 전으로 돌아가게

fast forward와 merge의 차이
CASE1, CASE2복습!!!!!!!!!!!!!!!!!!!!!!!!!!!!
fast forward: 그냥 전체 새로운 것을 얹는 것
merge: 내 변경사항도 포함되어있는 새로운 변경파일이 얹어지는 것