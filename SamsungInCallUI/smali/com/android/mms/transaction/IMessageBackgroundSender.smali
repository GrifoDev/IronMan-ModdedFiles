.class public interface abstract Lcom/android/mms/transaction/IMessageBackgroundSender;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/IMessageBackgroundSender$a;
    }
.end annotation


# virtual methods
.method public abstract getSupportedAttchType(Landroid/content/Intent;)Z
.end method

.method public abstract sendMessage(IILandroid/content/Intent;)V
.end method

.method public abstract startListening()V
.end method

.method public abstract stopListening()V
.end method
