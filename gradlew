����   4 
 8 � �
  �	 7 �
 7 � � � �	 7 � �
 	 �	 7 �
 8 �	 7 �	 7 �	 7 �
 7 �
  �
 � �
 7 �
  �
 7 �   � � � �  � � � � � �
 7 � � � � �
 7 � � � � �
 7 �
  � � � � � �
  � �
  � � �
  � � � � �
 7 �
 7 � � �  � � � � � � � � � destinationDir Ljava/io/File; 	classpath $Lorg/gradle/api/file/FileCollection; scalaClasspath scalaDocOptions ,Lorg/gradle/api/tasks/scala/ScalaDocOptions; title Ljava/lang/String; 	maxMemory "Lorg/gradle/api/provider/Property; 	Signature 6Lorg/gradle/api/provider/Property<Ljava/lang/String;>; <init> ()V Code LineNumberTable LocalVariableTable this %Lorg/gradle/api/tasks/scala/ScalaDoc; getAntBuilder 6()Lorg/gradle/api/internal/project/IsolatedAntBuilder; RuntimeVisibleAnnotations Ljavax/inject/Inject; getWorkerExecutor %()Lorg/gradle/workers/WorkerExecutor; getObjectFactory &()Lorg/gradle/api/model/ObjectFactory; getDestinationDir ()Ljava/io/File; &Lorg/gradle/api/tasks/OutputDirectory; setDestinationDir (Ljava/io/File;)V 	getSource  ()Lorg/gradle/api/file/FileTree; $Lorg/gradle/api/tasks/PathSensitive; value &Lorg/gradle/api/tasks/PathSensitivity; RELATIVE getClasspath &()Lorg/gradle/api/file/FileCollection;  Lorg/gradle/api/tasks/Classpath; setClasspath '(Lorg/gradle/api/file/FileCollection;)V getScalaClasspath setScalaClasspath getScalaDocOptions .()Lorg/gradle/api/tasks/scala/ScalaDocOptions; Lorg/gradle/api/tasks/Nested; setScalaDocOptions /(Lorg/gradle/api/tasks/scala/ScalaDocOptions;)V getTitle ()Ljava/lang/String; Ljavax/annotation/Nullable; Lorg/gradle/api/tasks/Optional; Lorg/gradle/api/tasks/Input; setTitle (Ljava/lang/String;)V "RuntimeVisibleParameterAnnotations getMaxMemory $()Lorg/gradle/api/provider/Property; 8()Lorg/gradle/api/provider/Property<Ljava/lang/String;>; Lorg/gradle/api/Incubating; Lorg/gradle/api/tasks/Internal; generate options queue Lorg/gradle/workers/WorkQueue; StackMapTable !Lorg/gradle/api/tasks/TaskAction; lambda$generate$2 g(Lorg/gradle/api/tasks/scala/ScalaDocOptions;Lorg/gradle/api/tasks/scala/internal/ScaladocParameters;)V 
parameters 8Lorg/gradle/api/tasks/scala/internal/ScaladocParameters; footer docTitle additionalParameters Ljava/util/List; LocalVariableTypeTable $Ljava/util/List<Ljava/lang/String;>; � lambda$generate$1 )(Lorg/gradle/workers/ProcessWorkerSpec;)V worker &Lorg/gradle/workers/ProcessWorkerSpec; lambda$generate$0 '(Lorg/gradle/process/JavaForkOptions;)V forkOptions $Lorg/gradle/process/JavaForkOptions; 
SourceFile ScalaDoc.java $Lorg/gradle/api/tasks/CacheableTask; F G *org/gradle/api/tasks/scala/ScalaDocOptions > ? S T java/lang/String � � � B C 'java/lang/UnsupportedOperationException 9 : Z [ ; < = < @ A g h � m � � � l m � r Q R BootstrapMethods � � � � � � � � � 4org/gradle/api/tasks/scala/internal/GenerateScaladoc � � � � � � � � ` � java/lang/Object ` a � � � � � U V � � Y � � � � �  -deprecation � � 
-unchecked m -doc-footer 
-doc-title	 e a t u
 � � � r #org/gradle/api/tasks/scala/ScalaDoc org/gradle/api/tasks/SourceTask java/util/List "org/gradle/api/model/ObjectFactory property 5(Ljava/lang/Class;)Lorg/gradle/api/provider/Property; getDocTitle org/gradle/util/GUtil isTrue (Ljava/lang/Object;)Z setDocTitle
 (Ljava/lang/Object;)V
 7 execute >(Lorg/gradle/api/tasks/scala/ScalaDoc;)Lorg/gradle/api/Action; !org/gradle/workers/WorkerExecutor processIsolation 7(Lorg/gradle/api/Action;)Lorg/gradle/workers/WorkQueue;
 7 ;(Lorg/gradle/api/tasks/scala/internal/ScaladocParameters;)V j(Lorg/gradle/api/tasks/scala/ScalaDoc;Lorg/gradle/api/tasks/scala/ScalaDocOptions;)Lorg/gradle/api/Action; org/gradle/workers/WorkQueue submit +(Ljava/lang/Class;Lorg/gradle/api/Action;)V 6org/gradle/api/tasks/scala/internal/ScaladocParameters 2()Lorg/gradle/api/file/ConfigurableFileCollection; .org/gradle/api/file/ConfigurableFileCollection from E([Ljava/lang/Object;)Lorg/gradle/api/file/ConfigurableFileCollection; getOutputDirectory )()Lorg/gradle/api/file/DirectoryProperty; %org/gradle/api/file/DirectoryProperty set 
getSources isDeprecation ()Z 
getOptions (()Lorg/gradle/api/provider/ListProperty; $org/gradle/api/provider/ListProperty add isUnchecked 	getFooter getAdditionalParameters ()Ljava/util/List; addAll (Ljava/lang/Iterable;)V $org/gradle/workers/ProcessWorkerSpec  org/gradle/api/provider/Property 	isPresent
 7 (Lorg/gradle/api/Action;)V get ()Ljava/lang/Object; "org/gradle/process/JavaForkOptions setMaxHeapSize � �  � � � "java/lang/invoke/LambdaMetafactory metafactory Lookup InnerClasses �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles ! 7 8     9 :    ; <    = <    > ?    @ A    B C  D    E   F G  H   U     *� *� Y� � **� �  � �    I       <  8  =  > J       