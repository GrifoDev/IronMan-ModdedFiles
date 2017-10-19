.class final synthetic Lcom/android/server/SystemServerInitThreadPool$-java_util_concurrent_Future_submit_java_lang_Runnable_runnable_java_lang_String_description_LambdaImpl0;
.super Ljava/lang/Object;
.source "SystemServerInitThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServerInitThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_concurrent_Future_submit_java_lang_Runnable_runnable_java_lang_String_description_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$description:Ljava/lang/String;

.field private synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServerInitThreadPool$-java_util_concurrent_Future_submit_java_lang_Runnable_runnable_java_lang_String_description_LambdaImpl0;->val$description:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/SystemServerInitThreadPool$-java_util_concurrent_Future_submit_java_lang_Runnable_runnable_java_lang_String_description_LambdaImpl0;->val$runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool$-java_util_concurrent_Future_submit_java_lang_Runnable_runnable_java_lang_String_description_LambdaImpl0;->val$description:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/SystemServerInitThreadPool$-java_util_concurrent_Future_submit_java_lang_Runnable_runnable_java_lang_String_description_LambdaImpl0;->val$runnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->-com_android_server_SystemServerInitThreadPool_lambda$1(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
