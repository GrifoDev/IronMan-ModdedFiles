.class abstract Lcom/android/server/pm/ShortcutPackageItem;
.super Ljava/lang/Object;
.source "ShortcutPackageItem.java"


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

.field private final mPackageName:Ljava/lang/String;

.field private final mPackageUserId:I

.field protected mShortcutUser:Lcom/android/server/pm/ShortcutUser;


# direct methods
.method protected constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iput p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackageInfo;

    iput-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v2, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutPackageInfo;->hasSignatures()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempted to restore package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but signatures not found in the restore data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestoreBlocked()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestoreBlocked()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->onRestored()V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutPackageInfo;->setShadow(Z)V

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public abstract getOwnerUserId()I
.end method

.method public getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    return v0
.end method

.method public getUser()Lcom/android/server/pm/ShortcutUser;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-object v0
.end method

.method protected abstract onRestoreBlocked()V
.end method

.method protected abstract onRestored()V
.end method

.method public refreshPackageSignatureAndSave()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackageInfo;->isShadow()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v0, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageInfo:Lcom/android/server/pm/ShortcutPackageInfo;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/pm/ShortcutPackageInfo;->refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    return-void
.end method

.method public replaceUser(Lcom/android/server/pm/ShortcutUser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    return-void
.end method

.method public abstract saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public verifyStates()V
    .locals 0

    return-void
.end method
