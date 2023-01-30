
5
  INPUT  PROMPT "何個の数を調べますか(GCDとLCMを求めます)"  : kazu
  DIM  a(100)
  DIM    b(100)
  DIM  c(100)
   
  FOR  i=1  TO   kazu
     INPUT  PROMPT   STR$(i) & " 番目の数を入力してください": n
     LET a(i)=n
     LET b(i)=a(i)
     LET c(i)=a(i)
  NEXT I
  REM---------------------------------
  FOR   j=1  TO    kazu
     PRINT  a(j)
  NEXT J
  REM-----------------------------最小値
  LET minn=MIN(a(1),a(2))
  FOR   m=3  TO  kazu
     LET minn=MIN(a(m),minn)
  NEXT M
  PRINT "入力された";kazu;"個の中の最小値は"; minn;"です。"
  REM----------------------------最大値
  LET maxx=MAX(a(1),a(2))
  FOR   m=3  TO  kazu
     LET maxx=MAX(a(m),maxx)
  NEXT M
  PRINT "入力された";kazu;"個の中の最大値は"; maxx;"です。"
   
  REM------------以下最大公約数を求めるための逆さ割り算
  LET p=1
  FOR   w=2  TO   minn
     FOR   j=1  TO  kazu
        IF  MOD(a(j),w)=0  THEN  LET s=s+1
         
     NEXT J
     LET ww=w
     IF  s=kazu  THEN  GOTO  10  ELSE  GOTO  20
10
      LET p=p*w
      FOR  i=1  TO  kazu
         LET a(i)=INT(a(i)/w)
      NEXT I
      LET w=ww-1    
20
      LET s=0
   NEXT W
    
   PRINT  "入力された";kazu;"個の数の最大公約数は";p;"です。"
   REM  ----以下　連除法(はしご算、逆さ割り算とも)を使って最小公倍数を求める。
   LET pp=1
   FOR   d=2  TO  minn
      FOR  k=1  TO  kazu
         IF  MOD(b(k),d)=0  THEN  LET ss=ss+1
         IF  MOD(b(k),d)=0  THEN   LET b(k)=INT(b(k)/d)
         LET dd=d
      NEXT  k
      IF  ss>=2  THEN  GOTO  100  ELSE   GOTO  200
100
       LET pp=pp*d
       LET d=dd-1
       GOTO  300
200
       MAT  b=c
        
        
300
        
       LET ss=0
       MAT  c=b
    NEXT  d
     
    FOR  t=1  TO  kazu
       LET pp=pp*b(t)
    NEXT   T
    PRINT  "lcm=";pp
     
    PRINT  "------------------------------------------------------------------" 
    PRINT  "続けますか?"   
    INPUT  PROMPT "続けますか　yes--->1   no--->0"  :xx   
    IF  xx=1  THEN  GOTO  5  ELSE  GOTO  400
400  
    PRINT  "終了しました。画面の×を押してください。"   
 END
  
  
 
