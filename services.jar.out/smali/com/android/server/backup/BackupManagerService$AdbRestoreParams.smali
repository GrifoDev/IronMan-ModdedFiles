.class Lcom/android/server/backup/BackupManagerService$AdbRestoreParams;
.super Lcom/android/server/backup/BackupManagerService$AdbParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbRestoreParams"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreParams;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$AdbParams;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
