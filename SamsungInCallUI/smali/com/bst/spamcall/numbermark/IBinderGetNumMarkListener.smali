.class public interface abstract Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bst/spamcall/numbermark/IBinderGetNumMarkListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetSpamNumInfoComplete(Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V
.end method

.method public abstract onGetSpamNumInfoFailure(I)V
.end method
