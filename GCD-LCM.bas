
5
  INPUT  PROMPT "���̐��𒲂ׂ܂���(GCD��LCM�����߂܂�)"  : kazu
  DIM  a(100)
  DIM    b(100)
  DIM  c(100)
   
  FOR  i=1  TO   kazu
     INPUT  PROMPT   STR$(i) & " �Ԗڂ̐�����͂��Ă�������": n
     LET a(i)=n
     LET b(i)=a(i)
     LET c(i)=a(i)
  NEXT I
  REM---------------------------------
  FOR   j=1  TO    kazu
     PRINT  a(j)
  NEXT J
  REM-----------------------------�ŏ��l
  LET minn=MIN(a(1),a(2))
  FOR   m=3  TO  kazu
     LET minn=MIN(a(m),minn)
  NEXT M
  PRINT "���͂��ꂽ";kazu;"�̒��̍ŏ��l��"; minn;"�ł��B"
  REM----------------------------�ő�l
  LET maxx=MAX(a(1),a(2))
  FOR   m=3  TO  kazu
     LET maxx=MAX(a(m),maxx)
  NEXT M
  PRINT "���͂��ꂽ";kazu;"�̒��̍ő�l��"; maxx;"�ł��B"
   
  REM------------�ȉ��ő���񐔂����߂邽�߂̋t������Z
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
    
   PRINT  "���͂��ꂽ";kazu;"�̐��̍ő���񐔂�";p;"�ł��B"
   REM  ----�ȉ��@�A���@(�͂����Z�A�t������Z�Ƃ�)���g���čŏ����{�������߂�B
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
    PRINT  "�����܂���?"   
    INPUT  PROMPT "�����܂����@yes--->1   no--->0"  :xx   
    IF  xx=1  THEN  GOTO  5  ELSE  GOTO  400
400  
    PRINT  "�I�����܂����B��ʂ́~�������Ă��������B"   
 END
  
  
 
