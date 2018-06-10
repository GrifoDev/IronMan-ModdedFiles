.class Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$1;
.super Ljava/lang/Object;
.source "ChipUpdateHelperEmulator.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$EmulHandler$EmulHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->setListener(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperBase$ChipUpdateHelperListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator$1;->this$0:Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;

    invoke-static {v0, p1}, Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;->access$000(Lcom/samsung/android/lib/dexcontrol/fota/chipupdatehelper/ChipUpdateHelperEmulator;I)V

    return-void
.end method
