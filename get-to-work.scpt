FasdUAS 1.101.10   ��   ��    k             l     ��  ��   hb This script tells me to get back to work when I'm goofing off too much.  Every two minutes, it checks if I am actively using Google Chrome.  It keeps track of these checks for the past twenty minutes, and if enough of the checks say "yes," it scolds me.  But it only scolds me at ten minute intervals, at most.  It is implemented using a circular queue.     � 	 	�   T h i s   s c r i p t   t e l l s   m e   t o   g e t   b a c k   t o   w o r k   w h e n   I ' m   g o o f i n g   o f f   t o o   m u c h .     E v e r y   t w o   m i n u t e s ,   i t   c h e c k s   i f   I   a m   a c t i v e l y   u s i n g   G o o g l e   C h r o m e .     I t   k e e p s   t r a c k   o f   t h e s e   c h e c k s   f o r   t h e   p a s t   t w e n t y   m i n u t e s ,   a n d   i f   e n o u g h   o f   t h e   c h e c k s   s a y   " y e s , "   i t   s c o l d s   m e .     B u t   i t   o n l y   s c o l d s   m e   a t   t e n   m i n u t e   i n t e r v a l s ,   a t   m o s t .     I t   i s   i m p l e m e n t e d   u s i n g   a   c i r c u l a r   q u e u e .   
  
 l     ��������  ��  ��        l     ��  ��    2 , Finds the sum of the elements in the queue.     �   X   F i n d s   t h e   s u m   o f   t h e   e l e m e n t s   i n   t h e   q u e u e .      i         I      �� ���� 0 sum     ��  o      ���� 	0 queue  ��  ��    k     -       r         I    �� ��
�� .corecnte****       ****  o     ���� 	0 queue  ��    o      ���� 0 c        r         m    	����    o      ���� 0 i     ! " ! r     # $ # m    ����   $ o      ���� 	0 total   "  % & % U    * ' ( ' k    % ) )  * + * r     , - , l    .���� . [     / 0 / o    ���� 	0 total   0 l    1���� 1 n     2 3 2 4    �� 4
�� 
cobj 4 o    ���� 0 i   3 o    ���� 	0 queue  ��  ��  ��  ��   - o      ���� 	0 total   +  5�� 5 r     % 6 7 6 [     # 8 9 8 o     !���� 0 i   9 m   ! "����  7 o      ���� 0 i  ��   ( o    ���� 0 c   &  :�� : L   + - ; ; o   + ,���� 	0 total  ��     < = < l     ��������  ��  ��   =  > ? > l     �� @ A��   @4. Declare a circular queue.  The items are 0 if Google Chrome was not running, and 1 if it was running.  Before the check happens, the number at index "head" should indicate what program I was running twenty minutes ago.  After the check happens, I replace this number with the program I am running now.    A � B B\   D e c l a r e   a   c i r c u l a r   q u e u e .     T h e   i t e m s   a r e   0   i f   G o o g l e   C h r o m e   w a s   n o t   r u n n i n g ,   a n d   1   i f   i t   w a s   r u n n i n g .     B e f o r e   t h e   c h e c k   h a p p e n s ,   t h e   n u m b e r   a t   i n d e x   " h e a d "   s h o u l d   i n d i c a t e   w h a t   p r o g r a m   I   w a s   r u n n i n g   t w e n t y   m i n u t e s   a g o .     A f t e r   t h e   c h e c k   h a p p e n s ,   I   r e p l a c e   t h i s   n u m b e r   w i t h   t h e   p r o g r a m   I   a m   r u n n i n g   n o w . ?  C D C l     E���� E r      F G F J      H H  I J I m     ����   J  K L K m    ����   L  M N M m    ����   N  O P O m    ����   P  Q R Q m    ����   R  S T S m    ����   T  U V U m    ����   V  W X W m    ����   X  Y Z Y m    	����   Z  [�� [ m   	 
����  ��   G o      ���� 	0 queue  ��  ��   D  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   `   Head of the queue.    a � b b &   H e a d   o f   t h e   q u e u e . _  c d c l    e���� e r     f g f m    ����  g o      ���� 0 head  ��  ��   d  h i h l     ��������  ��  ��   i  j k j l     �� l m��   l   Check every two minutes.    m � n n 2   C h e c k   e v e r y   t w o   m i n u t e s . k  o p o l    q���� q r     r s r m    ���� x s o      ���� 0 checkinterval  ��  ��   p  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x ] W Number of elements in the queue that must be 1 before I am deemed to be "goofing off."    y � z z �   N u m b e r   o f   e l e m e n t s   i n   t h e   q u e u e   t h a t   m u s t   b e   1   b e f o r e   I   a m   d e e m e d   t o   b e   " g o o f i n g   o f f . " w  { | { l    }���� } r     ~  ~ m    ����   o      ���� 0 goofoffthreshold  ��  ��   |  � � � l     ��������  ��  ��   �  ��� � l   � ����� � T    � � � k     � � �  � � � l     �� � ���   � $  Check which app is being run.    � � � � <   C h e c k   w h i c h   a p p   i s   b e i n g   r u n . �  � � � O     6 � � � r   $ 5 � � � 6 $ 3 � � � n   $ * � � � 1   ( *��
�� 
pnam � 4  $ (�� �
�� 
prcs � m   & '����  � =  + 2 � � � 1   , .��
�� 
pisf � m   / 1��
�� boovtrue � o      ���� 0 frontmostapp frontmostApp � m     ! � ��                                                                                  sevs  alis    �  Macintosh HD               �i|�H+     :System Events.app                                                ���j        ����  	                CoreServices    �i�o      �3�       :   -   ,  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  � � � l  7 7��������  ��  ��   �  � � � l  7 7�� � ���   �   Make the check.    � � � �     M a k e   t h e   c h e c k . �  � � � Z   7 y � ��� � � =  7 : � � � o   7 8���� 0 frontmostapp frontmostApp � m   8 9 � � � � �  G o o g l e   C h r o m e � k   = p � �  � � � r   = C � � � m   = >����  � n       � � � 4   ? B�� �
�� 
cobj � o   @ A���� 0 head   � o   > ?���� 	0 queue   �  ��� � Z   D p � ����� � F   D b � � � @  D L � � � I   D J�� ����� 0 sum   �  ��� � o   E F���� 	0 queue  ��  ��   � o   J K���� 0 goofoffthreshold   � l  O ^ ����� � G   O ^ � � � =  O T � � � o   O P���� 0 head   � m   P S����  � =  W Z � � � o   W X���� 0 head   � m   X Y���� 
��  ��   � I  e l�� ���
�� .sysodlogaskr        TEXT � m   e h � � � � � 2 S h o u l d n ' t   y o u   b e   w o r k i n g ?��  ��  ��  ��  ��   � r   s y � � � m   s t����   � n       � � � 4   u x�� �
�� 
cobj � o   v w���� 0 head   � o   t u���� 	0 queue   �  � � � r   z � � � � [   z  � � � l  z } ����� � `   z } � � � l  z { ����� � o   z {���� 0 head  ��  ��   � m   { |���� 
��  ��   � m   } ~����  � o      ���� 0 head   �  � � � l  � �����~��  �  �~   �  � � � l  � ��} � ��}   �   For debugging purposes.    � � � � 0   F o r   d e b u g g i n g   p u r p o s e s . �  � � � I  � ��| ��{
�| .ascrcmnt****      � **** � o   � ��z�z 0 head  �{   �  � � � I  � ��y ��x
�y .ascrcmnt****      � **** � o   � ��w�w 0 frontmostapp frontmostApp�x   �  � � � I  � ��v ��u
�v .ascrcmnt****      � **** � o   � ��t�t 	0 queue  �u   �  � � � l  � ��s�r�q�s  �r  �q   �  ��p � I  � ��o ��n
�o .sysodelanull��� ��� nmbr � o   � ��m�m 0 checkinterval  �n  �p  ��  ��  ��       �l � � ��l   � �k�j�k 0 sum  
�j .aevtoappnull  �   � **** � �i �h�g � ��f�i 0 sum  �h �e ��e  �  �d�d 	0 queue  �g   � �c�b�a�`�c 	0 queue  �b 0 c  �a 0 i  �` 	0 total   � �_�^
�_ .corecnte****       ****
�^ 
cobj�f .�j  E�OkE�OjE�O �kh���/E�O�kE�[OY��O� � �] ��\�[ � ��Z
�] .aevtoappnull  �   � **** � k     � � �  C � �  c � �  o � �  { � �  ��Y�Y  �\  �[   �   � �X�W�V�U�T�S�R ��Q�P ��O�N ��M�L�K�J ��I�H�G�X 
�W 	0 queue  �V 0 head  �U x�T 0 checkinterval  �S �R 0 goofoffthreshold  
�Q 
prcs
�P 
pnam �  
�O 
pisf�N 0 frontmostapp frontmostApp
�M 
cobj�L 0 sum  �K 
�J 
bool
�I .sysodlogaskr        TEXT
�H .ascrcmnt****      � ****
�G .sysodelanull��� ��� nmbr�Z �jjjjjjjjjj�vE�OkE�O�E�O�E�O �hZ� *�k/�,�[�,\Ze81E�UO��  8k���/FO*�k+ �	 �a  
 	�� a &a & a j Y hY j���/FO��#kE�O�j O�j O�j O�j [OY��ascr  ��ޭ