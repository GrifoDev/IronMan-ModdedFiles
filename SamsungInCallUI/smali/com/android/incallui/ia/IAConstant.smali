.class public Lcom/android/incallui/ia/IAConstant;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ia/IAConstant$NlgParam;,
        Lcom/android/incallui/ia/IAConstant$StateId;
    }
.end annotation


# static fields
.field public static final IA_NLG_ATT_EXIST:Ljava/lang/String; = "Exist"

.field public static final IA_NLG_NAME_INCOMING_CALL:Ljava/lang/String; = "IncomingCallNumber"

.field public static final IA_STATE_ID_ACCEPT_CALL:Ljava/lang/String; = "CallAccept"

.field public static final IA_STATE_ID_ACCEPT_VOICE_CALL:Ljava/lang/String; = "VoiceCallAccept"

.field public static final IA_STATE_ID_ACCEPT_VOICE_CALL_SPEAKER_ON:Ljava/lang/String; = "CallAcceptSpeakerOn"

.field public static final IA_STATE_ID_BLOCK_SMART_CALL:Ljava/lang/String; = "BlockSmartCall"

.field public static final IA_STATE_ID_CROSS_MESSAGE_CONVERSATION_VIEW_SHARE:Ljava/lang/String; = "CrossMessagesConversationViewShare"

.field public static final IA_STATE_ID_DECLINE_CALL_WITH_RECENT_AGIF:Ljava/lang/String; = "DeclinceCallWithRecentAGIF"

.field public static final IA_STATE_ID_INCOMING_CALL:Ljava/lang/String; = "IncomingCall"

.field public static final IA_STATE_ID_NO_CALL:Ljava/lang/String; = "NoCall"

.field public static final IA_STATE_ID_OUTGOING_CALL:Ljava/lang/String; = "OutgoingCall"

.field public static final IA_STATE_ID_REJECT_CALL:Ljava/lang/String; = "CallReject"

.field public static final IA_STATE_ID_REJECT_WITH_MSG:Ljava/lang/String; = "RejectCallWithMessage"

.field public static final IA_STATE_ID_REMINDER_OFF:Ljava/lang/String; = "ReminderOff"

.field public static final IA_STATE_ID_REMINDER_ON:Ljava/lang/String; = "ReminderOn"

.field public static final IA_STATE_ID_REPORT_SMART_CALL:Ljava/lang/String; = "ReportSmartCall"

.field public static final IA_STATE_ID_SHOW_AGIF:Ljava/lang/String; = "ShowAGIF"

.field public static final IA_STATE_ID_SHOW_REMINDER:Ljava/lang/String; = "ShowReminder"

.field public static final IA_STATE_ID_SPEAKER_CONTROL:Ljava/lang/String; = "SpeakerControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "RejectCallWithMessage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "BlockSmartCall"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "ReportSmartCall"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "VoiceCallAccept"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "CallReject"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "CallAccept"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "ReminderOn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "ReminderOff"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "CallAcceptSpeakerOn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string v1, "ShowReminder"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string v1, "ShowAGIF"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string v1, "DeclinceCallWithRecentAGIF"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_c
    const-string v1, "SpeakerControl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "Call_49"

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "Call_50"

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "Call_51"

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "Call_54"

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "Call_55"

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "Call_56"

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "Call_103"

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "Call_104"

    goto/16 :goto_1

    :pswitch_8
    const-string v0, "Call_118"

    goto/16 :goto_1

    :pswitch_9
    const-string v0, "Call_128"

    goto/16 :goto_1

    :pswitch_a
    const-string v0, "Call_130"

    goto/16 :goto_1

    :pswitch_b
    const-string v0, "Call_131"

    goto/16 :goto_1

    :pswitch_c
    const-string v0, "Call_500"

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b676b2d -> :sswitch_2
        -0x4a2cc6da -> :sswitch_5
        -0x47e5f951 -> :sswitch_9
        -0x2d0b0843 -> :sswitch_4
        -0x2c39c848 -> :sswitch_8
        -0x1b7e8e0d -> :sswitch_b
        -0x1060e7a0 -> :sswitch_a
        0xf66dda -> :sswitch_1
        0x3a0fef7d -> :sswitch_7
        0x4be34564 -> :sswitch_0
        0x605e7bb8 -> :sswitch_3
        0x6d3a5211 -> :sswitch_6
        0x7fe13c7e -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
