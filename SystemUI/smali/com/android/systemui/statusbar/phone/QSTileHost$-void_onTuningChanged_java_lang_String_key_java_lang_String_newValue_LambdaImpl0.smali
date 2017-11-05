.class final synthetic Lcom/android/systemui/statusbar/phone/QSTileHost$-void_onTuningChanged_java_lang_String_key_java_lang_String_newValue_LambdaImpl0;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QSTileHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onTuningChanged_java_lang_String_key_java_lang_String_newValue_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private synthetic val$tile:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QSTileHost;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$-void_onTuningChanged_java_lang_String_key_java_lang_String_newValue_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$-void_onTuningChanged_java_lang_String_key_java_lang_String_newValue_LambdaImpl0;->val$tile:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$-void_onTuningChanged_java_lang_String_key_java_lang_String_newValue_LambdaImpl0;->val$this:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QSTileHost$-void_onTuningChanged_java_lang_String_key_java_lang_String_newValue_LambdaImpl0;->val$tile:Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->-com_android_systemui_statusbar_phone_QSTileHost_lambda$1(Ljava/util/Map$Entry;)V

    return-void
.end method
