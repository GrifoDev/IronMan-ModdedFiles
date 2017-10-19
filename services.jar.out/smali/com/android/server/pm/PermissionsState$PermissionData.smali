.class final Lcom/android/server/pm/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mPerm:Lcom/android/server/pm/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BasePermission;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V
    .locals 6

    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    invoke-direct {p0, v4}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/pm/PermissionsState$PermissionState;

    invoke-direct {v5, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/PermissionsState$PermissionState;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isCompatibleUserId(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v1

    invoke-static {p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private isInstallPermission()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isInstallPermissionKey(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    return-object v0
.end method

.method public grant(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    iget-object v1, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-static {v0, v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    return v3
.end method

.method public isDefault()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGranted(I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get1(Lcom/android/server/pm/PermissionsState$PermissionState;)Z

    move-result v1

    return v1
.end method

.method public revoke(I)Z
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    invoke-static {v1, v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    if-eqz p1, :cond_2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v0

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " permission revoked, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "revoke was called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public updateFlags(III)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v6

    if-nez v6, :cond_1

    return v5

    :cond_1
    and-int v1, p3, p2

    iget-object v6, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionState;

    if-eqz p1, :cond_2

    const/4 v6, -0x1

    if-ne p1, v6, :cond_3

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v0

    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3

    and-int/lit8 v6, p2, 0x10

    if-eqz v6, :cond_3

    and-int/lit8 v6, v1, 0x10

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " update flags/system_fixed, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "update flags/system_fixed was called by"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v7, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v2

    invoke-static {v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v6

    not-int v7, p2

    and-int/2addr v6, v7

    or-int/2addr v6, v1

    invoke-static {v3, v6}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    invoke-static {v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v6

    if-eq v6, v2, :cond_5

    :goto_0
    return v4

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    new-instance v3, Lcom/android/server/pm/PermissionsState$PermissionState;

    iget-object v5, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    iget-object v5, v5, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    iget-object v5, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v4

    :cond_7
    return v5
.end method
