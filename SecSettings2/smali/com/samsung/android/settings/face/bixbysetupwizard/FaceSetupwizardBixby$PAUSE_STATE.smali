.class final enum Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;
.super Ljava/lang/Enum;
.source "FaceSetupwizardBixby.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PAUSE_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

.field public static final enum DEFAULT:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

.field public static final enum EXTERNAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

.field public static final enum NORMAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->DEFAULT:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    const-string/jumbo v1, "EXTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->EXTERNAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->NORMAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    sget-object v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->DEFAULT:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->EXTERNAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->NORMAL:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->$VALUES:[Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;->$VALUES:[Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$PAUSE_STATE;

    return-object v0
.end method
