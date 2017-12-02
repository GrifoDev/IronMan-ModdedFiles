.class Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 14

    const/16 v13, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get14()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get6()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-lt v7, v13, :cond_7

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    :goto_1
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get16()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v7, v11, v8}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(ZI)V

    :cond_1
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get14()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get6()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_2
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_3
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v7, :cond_5

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v7, v8, v10, v11, v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v3

    :goto_3
    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    invoke-virtual {v7, v8, v10, v11, v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v5

    :goto_4
    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v10, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    invoke-virtual {v7, v8, v10, v11, v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_5
    if-nez v3, :cond_4

    const-string/jumbo v7, "ChooseLockPassword"

    const-string/jumbo v8, "critical: no token returned for known good password."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "hw_auth_token"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v7, "hw_auth_token_iris"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v7, "hw_auth_token_face"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_5
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get18()I

    move-result v7

    if-lt v7, v13, :cond_6

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get14()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_6
    :goto_6
    return-object v2

    :cond_7
    iget v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v7, "ChooseLockPassword"

    const-string/jumbo v8, "getActivity() got null value. It is for setIsFingerAsSupplement"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get17()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_a
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get17()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-lt v7, v13, :cond_3

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v7, v12, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    if-nez v7, :cond_b

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v1, v7, v11}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_2

    :cond_b
    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v1, v7, v12}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_2

    :cond_c
    const/4 v7, 0x1

    :try_start_1
    new-array v3, v7, [B

    const/4 v7, -0x1

    const/4 v8, 0x0

    aput-byte v7, v3, v8

    const-string/jumbo v7, "ChooseLockPassword"

    const-string/jumbo v8, "critical: challenge returned zero."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_d
    const/4 v7, 0x1

    new-array v5, v7, [B

    const/4 v7, -0x1

    const/4 v8, 0x0

    aput-byte v7, v5, v8

    const-string/jumbo v7, "ChooseLockPassword"

    const-string/jumbo v8, "critical: challenge returned zero."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    const/4 v7, 0x1

    new-array v4, v7, [B

    const/4 v7, -0x1

    const/4 v8, 0x0

    aput-byte v7, v4, v8

    const-string/jumbo v7, "ChooseLockPassword"

    const-string/jumbo v8, "critical: mChallengeFace returned zero."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :cond_f
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get6()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get5()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ChooseLockPassword;

    invoke-static {v7, v12}, Lcom/android/settings/ChooseLockPassword;->-wrap1(Lcom/android/settings/ChooseLockPassword;I)V

    goto/16 :goto_6
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    move/from16 v0, p12

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    move/from16 v0, p13

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->start()V

    return-void
.end method
