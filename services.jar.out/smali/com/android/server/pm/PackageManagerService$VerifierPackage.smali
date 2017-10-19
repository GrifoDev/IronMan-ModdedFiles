.class Lcom/android/server/pm/PackageManagerService$VerifierPackage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifierPackage"
.end annotation


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final firstInstallTime:J

.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uid:I

    iput-wide p3, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->firstInstallTime:J

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->componentName:Landroid/content/ComponentName;

    return-void
.end method
