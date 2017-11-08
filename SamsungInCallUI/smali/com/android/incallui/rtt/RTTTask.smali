.class public Lcom/android/incallui/rtt/RTTTask;
.super Landroid/os/AsyncTask;


# instance fields
.field adapter:Lcom/android/incallui/rtt/ChatAdapter;

.field connectTime:J

.field db:Lcom/samsung/android/provider/rttcallprovider/c;

.field elapsedTime:J

.field mContext:Landroid/content/Context;

.field pd:Landroid/app/ProgressDialog;

.field startTime:J

.field stopTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/provider/rttcallprovider/c;Lcom/android/incallui/rtt/ChatAdapter;J)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/rtt/RTTTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/rtt/RTTTask;->db:Lcom/samsung/android/provider/rttcallprovider/c;

    iput-object p3, p0, Lcom/android/incallui/rtt/RTTTask;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    iput-wide p4, p0, Lcom/android/incallui/rtt/RTTTask;->connectTime:J

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/rtt/RTTTask;->startTime:J

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/rtt/RTTTask;->db:Lcom/samsung/android/provider/rttcallprovider/c;

    new-instance v2, Lcom/samsung/android/provider/rttcallprovider/b;

    iget-wide v4, p0, Lcom/android/incallui/rtt/RTTTask;->connectTime:J

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/provider/rttcallprovider/b;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/provider/rttcallprovider/c;->a(Lcom/samsung/android/provider/rttcallprovider/b;)V

    iget-object v1, p0, Lcom/android/incallui/rtt/RTTTask;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/rtt/ChatAdapter;->getCount()I

    move-result v9

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    iget-object v1, p0, Lcom/android/incallui/rtt/RTTTask;->adapter:Lcom/android/incallui/rtt/ChatAdapter;

    invoke-virtual {v1, v8}, Lcom/android/incallui/rtt/ChatAdapter;->getItem(I)Lcom/android/incallui/rtt/ChatMessage;

    move-result-object v6

    iget-object v10, p0, Lcom/android/incallui/rtt/RTTTask;->db:Lcom/samsung/android/provider/rttcallprovider/c;

    new-instance v1, Lcom/samsung/android/provider/rttcallprovider/a;

    invoke-virtual {v6}, Lcom/android/incallui/rtt/ChatMessage;->getIsme()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_1
    invoke-virtual {v6}, Lcom/android/incallui/rtt/ChatMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/incallui/rtt/RTTTask;->connectTime:J

    invoke-virtual {v6}, Lcom/android/incallui/rtt/ChatMessage;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/provider/rttcallprovider/a;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v10, v1}, Lcom/samsung/android/provider/rttcallprovider/c;->a(Lcom/samsung/android/provider/rttcallprovider/a;)V

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v1}, Lcom/android/incallui/rtt/RTTTask;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    :cond_0
    move v2, v7

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/rtt/RTTTask;->db:Lcom/samsung/android/provider/rttcallprovider/c;

    invoke-virtual {v0}, Lcom/samsung/android/provider/rttcallprovider/c;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/rtt/RTTTask;->stopTime:J

    iget-wide v0, p0, Lcom/android/incallui/rtt/RTTTask;->stopTime:J

    iget-wide v2, p0, Lcom/android/incallui/rtt/RTTTask;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/incallui/rtt/RTTTask;->elapsedTime:J

    iget-object v0, p0, Lcom/android/incallui/rtt/RTTTask;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/rtt/RTTTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/incallui/rtt/RTTTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/rtt/RTTTask;->pd:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/incallui/rtt/RTTTask;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Saving messages in DB"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/rtt/RTTTask;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/incallui/rtt/RTTTask;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
