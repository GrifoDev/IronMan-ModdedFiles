.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_41788(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$3;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$3;->$m$0(Landroid/content/DialogInterface;)V

    return-void
.end method
