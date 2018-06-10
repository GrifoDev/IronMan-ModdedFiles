.class Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;
.super Ljava/lang/Object;
.source "ApplicativeAppFota.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->createDownloadInputStreamRequest(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;)Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/InputStreamRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

.field final synthetic val$destinationFolderPath:Ljava/lang/String;

.field final synthetic val$downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

.field final synthetic val$downloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    iput-object p2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->val$downloadUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->val$destinationFolderPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->val$downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->onResponse([B)V

    return-void
.end method

.method public onResponse([B)V
    .locals 8

    array-length v1, p1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->val$downloadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v0, "file"

    invoke-virtual {v6, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-static {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->access$400(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    new-instance v0, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

    iget-object v2, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->val$destinationFolderPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->val$downloadFileListener:Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileListener;)V

    invoke-static {v7, v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->access$502(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;)Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

    iget-object v0, p0, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota$6;->this$0:Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;

    invoke-static {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;->access$500(Lcom/samsung/android/sdk/applicativeapp/fotalib/ApplicativeAppFota;)Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/applicativeapp/fotalib/httpdownload/DownloadFileThread;->start()V

    return-void
.end method
