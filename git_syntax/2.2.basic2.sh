
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
merge: '로컬'에 내 변경사항도 포함되어있는 새로운 변경파일이 추가되어 얹어지는 것 
 -(내 변경c, 원격d, 새로운 변경파일 cd인 f)(but같은 파일이면 안되고 text1, text2이렇게 따로 고치고 pull해야한다)
 -로컬에서는 로컬 c,원격d 따로 고쳤을 때 pull로 받아 f를 만들 수 있지만, 
 -원격에서는 로컬c, 원격d 따로고쳤을 때 push해서 원격에서 f를 만들 수 없게 되어 있다. //원격에서는 병합작업이 불가하다
 - 다른파일:git pull origin main => 병합커밋 (자동병합) // 충돌이 없으니
 - 같은파일 수정: git pull origin main=> 병합파일 -> 수정 -> add commit ->병합 커밋 ->git push origin main  //충돌 수정한 것이기 때문에

#원격에서 당겨올 때
 1.commit(비교대상인c가 있어야되니까)+pull => 충돌 => 해결
 2.작업사항 저장 후 취소(삭재) => pull => 다시 불러옴 //지금 commit하고 싶지는 않아


 #git stash
 삭제하고 pull당겨오고 니꺼 다시 넣어라 였을 때 필요한 함수