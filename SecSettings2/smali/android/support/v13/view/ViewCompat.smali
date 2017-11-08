.class public Landroid/support/v13/view/ViewCompat;
.super Landroid/support/v4/view/ViewCompat;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/ViewCompat$Api24ViewCompatImpl;,
        Landroid/support/v13/view/ViewCompat$BaseViewCompatImpl;,
        Landroid/support/v13/view/ViewCompat$ViewCompatImpl;
    }
.end annotation


# static fields
.field static IMPL:Landroid/support/v13/view/ViewCompat$ViewCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v13/view/ViewCompat$Api24ViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/view/ViewCompat$Api24ViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/ViewCompat;->IMPL:Landroid/support/v13/view/ViewCompat$ViewCompatImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v13/view/ViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/ViewCompat;->IMPL:Landroid/support/v13/view/ViewCompat$ViewCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat;-><init>()V

    return-void
.end method
