.class final synthetic Lcom/android/server/pm/PackageManagerService$-void_updateOverlayMap_java_lang_String_packageName_android_content_pm_PackageParser$Package_targetPkg_boolean_enabled_LambdaImpl1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_updateOverlayMap_java_lang_String_packageName_android_content_pm_PackageParser$Package_targetPkg_boolean_enabled_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$-void_updateOverlayMap_java_lang_String_packageName_android_content_pm_PackageParser$Package_targetPkg_boolean_enabled_LambdaImpl1;->val$this:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$-void_updateOverlayMap_java_lang_String_packageName_android_content_pm_PackageParser$Package_targetPkg_boolean_enabled_LambdaImpl1;->val$this:Lcom/android/server/pm/PackageManagerService;

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->-com_android_server_pm_PackageManagerService_lambda$5(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method
