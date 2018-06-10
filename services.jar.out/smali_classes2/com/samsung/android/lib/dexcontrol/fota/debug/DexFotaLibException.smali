.class public Lcom/samsung/android/lib/dexcontrol/fota/debug/DexFotaLibException;
.super Ljava/lang/Exception;
.source "DexFotaLibException.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DexFotaLibException"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DexFotaLib Exception error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static exception(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "DexFotaLibException"

    invoke-static {v0, p0}, Lcom/samsung/android/lib/dexcontrol/fota/debug/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
