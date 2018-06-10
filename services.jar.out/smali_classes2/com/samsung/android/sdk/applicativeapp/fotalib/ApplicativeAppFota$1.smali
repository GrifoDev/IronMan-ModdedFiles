.class Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$1;
.super Ljava/lang/Object;
.source "ApplicativeAppFota.java"

# interfaces
.implements Lcom/stanfy/gsonxml/XmlParserCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->getGsonXml()Lcom/stanfy/gsonxml/GsonXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$1;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 2

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
