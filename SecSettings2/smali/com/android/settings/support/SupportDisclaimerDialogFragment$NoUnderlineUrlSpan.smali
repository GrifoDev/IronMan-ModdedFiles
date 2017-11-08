.class public Lcom/android/settings/support/SupportDisclaimerDialogFragment$NoUnderlineUrlSpan;
.super Landroid/text/style/URLSpan;
.source "SupportDisclaimerDialogFragment.java"


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
