.class public Lcom/samsung/android/settings/WifiApUtils;
.super Ljava/lang/Object;
.source "WifiApUtils.java"


# static fields
.field private static final DBG:Z

.field private static DBGSTR:Z

.field public static mMHSCustomer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    sput-boolean v1, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    sget-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "mhs.customer"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "mhs.dbgstr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStringID(I)I
    .locals 5

    const-string/jumbo v1, ""

    sget-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "mhs.customer"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v3, "ril.official_cscver"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0b0f59

    if-ne p0, v3, :cond_8

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const p0, 0x7f0b0f55

    :cond_1
    :goto_1
    return p0

    :cond_2
    sput-object v1, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f57

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const p0, 0x7f0b0f56

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const p0, 0x7f0b0f54

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const p0, 0x7f0b0f58

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f53

    goto :goto_1

    :cond_8
    const v3, 0x7f0b107a

    if-ne p0, v3, :cond_e

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const p0, 0x7f0b1075

    goto :goto_1

    :cond_9
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const p0, 0x7f0b1076

    goto :goto_1

    :cond_a
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const p0, 0x7f0b1077

    goto :goto_1

    :cond_b
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const p0, 0x7f0b1074

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const p0, 0x7f0b1079

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1073

    goto/16 :goto_1

    :cond_e
    const v3, 0x7f0b0f8c

    if-ne p0, v3, :cond_13

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const p0, 0x7f0b0f89

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    const p0, 0x7f0b0f8b

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const p0, 0x7f0b0f8a

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f88

    goto/16 :goto_1

    :cond_13
    const v3, 0x7f0b0fcb

    if-ne p0, v3, :cond_15

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_14
    const p0, 0x7f0b0fca

    goto/16 :goto_1

    :cond_15
    const v3, 0x7f0b0fd3

    if-ne p0, v3, :cond_1c

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const p0, 0x7f0b0fd1

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const p0, 0x7f0b0fcf

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const p0, 0x7f0b0fd2

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const p0, 0x7f0b0fce

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const p0, 0x7f0b0fcd

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fd0

    goto/16 :goto_1

    :cond_1c
    const v3, 0x7f0b0fd6

    if-ne p0, v3, :cond_1d

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fd5

    goto/16 :goto_1

    :cond_1d
    const v3, 0x7f0b0fe9

    if-ne p0, v3, :cond_21

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const p0, 0x7f0b0fe7

    goto/16 :goto_1

    :cond_1e
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const p0, 0x7f0b0fe6

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const p0, 0x7f0b0fe5

    goto/16 :goto_1

    :cond_20
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fe8

    goto/16 :goto_1

    :cond_21
    const v3, 0x7f0b1003

    if-ne p0, v3, :cond_27

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const p0, 0x7f0b1001

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const p0, 0x7f0b0fff

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    const p0, 0x7f0b1002

    goto/16 :goto_1

    :cond_25
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const p0, 0x7f0b1000

    goto/16 :goto_1

    :cond_26
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0ffe

    goto/16 :goto_1

    :cond_27
    const v3, 0x7f0b1009

    if-ne p0, v3, :cond_2d

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    const p0, 0x7f0b1008

    goto/16 :goto_1

    :cond_29
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const p0, 0x7f0b1006

    goto/16 :goto_1

    :cond_2a
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const p0, 0x7f0b1007

    goto/16 :goto_1

    :cond_2b
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const p0, 0x7f0b1005

    goto/16 :goto_1

    :cond_2c
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1004

    goto/16 :goto_1

    :cond_2d
    const v3, 0x7f0b1019

    if-ne p0, v3, :cond_30

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const p0, 0x7f0b1018

    goto/16 :goto_1

    :cond_2e
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const p0, 0x7f0b1016

    goto/16 :goto_1

    :cond_2f
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1017

    goto/16 :goto_1

    :cond_30
    const v3, 0x7f0b103e

    if-ne p0, v3, :cond_35

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_31
    const p0, 0x7f0b103b

    goto/16 :goto_1

    :cond_32
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const p0, 0x7f0b103c

    goto/16 :goto_1

    :cond_33
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const p0, 0x7f0b103a

    goto/16 :goto_1

    :cond_34
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b103d

    goto/16 :goto_1

    :cond_35
    const v3, 0x7f0b108e

    if-ne p0, v3, :cond_3b

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_36
    const p0, 0x7f0b108d

    goto/16 :goto_1

    :cond_37
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    const p0, 0x7f0b108b

    goto/16 :goto_1

    :cond_38
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    const p0, 0x7f0b108c

    goto/16 :goto_1

    :cond_39
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const p0, 0x7f0b108a

    goto/16 :goto_1

    :cond_3a
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1089

    goto/16 :goto_1

    :cond_3b
    const v3, 0x7f0b1092

    if-ne p0, v3, :cond_3f

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    :cond_3c
    const p0, 0x7f0b1091

    goto/16 :goto_1

    :cond_3d
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const p0, 0x7f0b1090

    goto/16 :goto_1

    :cond_3e
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b108f

    goto/16 :goto_1

    :cond_3f
    const v3, 0x7f0b1096

    if-ne p0, v3, :cond_43

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    :cond_40
    const p0, 0x7f0b1095

    goto/16 :goto_1

    :cond_41
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const p0, 0x7f0b1094

    goto/16 :goto_1

    :cond_42
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1093

    goto/16 :goto_1

    :cond_43
    const v3, 0x7f0b109c

    if-ne p0, v3, :cond_49

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const p0, 0x7f0b109a

    goto/16 :goto_1

    :cond_44
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    const p0, 0x7f0b1098

    goto/16 :goto_1

    :cond_45
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    :cond_46
    const p0, 0x7f0b109b

    goto/16 :goto_1

    :cond_47
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    const p0, 0x7f0b1099

    goto/16 :goto_1

    :cond_48
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1097

    goto/16 :goto_1

    :cond_49
    const v3, 0x7f0b10a2

    if-ne p0, v3, :cond_4f

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_4a
    const p0, 0x7f0b10a1

    goto/16 :goto_1

    :cond_4b
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const p0, 0x7f0b109f

    goto/16 :goto_1

    :cond_4c
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const p0, 0x7f0b10a0

    goto/16 :goto_1

    :cond_4d
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const p0, 0x7f0b109e

    goto/16 :goto_1

    :cond_4e
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b109d

    goto/16 :goto_1

    :cond_4f
    const v3, 0x7f0b10a6

    if-ne p0, v3, :cond_53

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    :cond_50
    const p0, 0x7f0b10a5

    goto/16 :goto_1

    :cond_51
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    const p0, 0x7f0b10a4

    goto/16 :goto_1

    :cond_52
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10a3

    goto/16 :goto_1

    :cond_53
    const v3, 0x7f0b10aa

    if-ne p0, v3, :cond_57

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    :cond_54
    const p0, 0x7f0b10a9

    goto/16 :goto_1

    :cond_55
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const p0, 0x7f0b10a8

    goto/16 :goto_1

    :cond_56
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10a7

    goto/16 :goto_1

    :cond_57
    const v3, 0x7f0b10b0

    if-ne p0, v3, :cond_5d

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    const p0, 0x7f0b10ae

    goto/16 :goto_1

    :cond_58
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    const p0, 0x7f0b10ac

    goto/16 :goto_1

    :cond_59
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    :cond_5a
    const p0, 0x7f0b10af

    goto/16 :goto_1

    :cond_5b
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const p0, 0x7f0b10ad

    goto/16 :goto_1

    :cond_5c
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10ab

    goto/16 :goto_1

    :cond_5d
    const v3, 0x7f0b10b3

    if-ne p0, v3, :cond_5f

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const p0, 0x7f0b10b2

    goto/16 :goto_1

    :cond_5e
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10b1

    goto/16 :goto_1

    :cond_5f
    const v3, 0x7f0b10b6

    if-ne p0, v3, :cond_61

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    const p0, 0x7f0b10b5

    goto/16 :goto_1

    :cond_60
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10b4

    goto/16 :goto_1

    :cond_61
    const v3, 0x7f0b10b9

    if-ne p0, v3, :cond_63

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    const p0, 0x7f0b10b8

    goto/16 :goto_1

    :cond_62
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10b7

    goto/16 :goto_1

    :cond_63
    const v3, 0x7f0b10bb

    if-ne p0, v3, :cond_64

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10ba

    goto/16 :goto_1

    :cond_64
    const v3, 0x7f0b10be

    if-ne p0, v3, :cond_66

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    const p0, 0x7f0b10bd

    goto/16 :goto_1

    :cond_65
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10bc

    goto/16 :goto_1

    :cond_66
    const v3, 0x7f0b10c1

    if-ne p0, v3, :cond_68

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    const p0, 0x7f0b10c0

    goto/16 :goto_1

    :cond_67
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10bf

    goto/16 :goto_1

    :cond_68
    const v3, 0x7f0b10c4

    if-ne p0, v3, :cond_6a

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    const p0, 0x7f0b10c3

    goto/16 :goto_1

    :cond_69
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10c2

    goto/16 :goto_1

    :cond_6a
    const v3, 0x7f0b10c6

    if-ne p0, v3, :cond_6b

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10c5

    goto/16 :goto_1

    :cond_6b
    const v3, 0x7f0b0fbe

    if-ne p0, v3, :cond_72

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const p0, 0x7f0b0fb9

    goto/16 :goto_1

    :cond_6c
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    const p0, 0x7f0b0fbb

    goto/16 :goto_1

    :cond_6d
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    :cond_6e
    const p0, 0x7f0b0fbd

    goto/16 :goto_1

    :cond_6f
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    const p0, 0x7f0b0fbc

    goto/16 :goto_1

    :cond_70
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const p0, 0x7f0b0fba

    goto/16 :goto_1

    :cond_71
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fb8

    goto/16 :goto_1

    :cond_72
    const v3, 0x7f0b1066

    if-ne p0, v3, :cond_77

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    :cond_73
    const p0, 0x7f0b1065

    goto/16 :goto_1

    :cond_74
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    const p0, 0x7f0b1063

    goto/16 :goto_1

    :cond_75
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const p0, 0x7f0b1064

    goto/16 :goto_1

    :cond_76
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1062

    goto/16 :goto_1

    :cond_77
    const v3, 0x7f0b10d9

    if-ne p0, v3, :cond_78

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10d8

    goto/16 :goto_1

    :cond_78
    const v3, 0x7f0b0faa

    if-ne p0, v3, :cond_7c

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    :cond_79
    const p0, 0x7f0b0fa9

    goto/16 :goto_1

    :cond_7a
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const p0, 0x7f0b0fa8

    goto/16 :goto_1

    :cond_7b
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fa7

    goto/16 :goto_1

    :cond_7c
    const v3, 0x7f0b0fae

    if-ne p0, v3, :cond_80

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    :cond_7d
    const p0, 0x7f0b0fad

    goto/16 :goto_1

    :cond_7e
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    const p0, 0x7f0b0fac

    goto/16 :goto_1

    :cond_7f
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fab

    goto/16 :goto_1

    :cond_80
    const v3, 0x7f0b1043

    if-ne p0, v3, :cond_81

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1042

    goto/16 :goto_1

    :cond_81
    const v3, 0x7f0b10e1

    if-ne p0, v3, :cond_86

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    :cond_82
    const p0, 0x7f0b10e0

    goto/16 :goto_1

    :cond_83
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const p0, 0x7f0b10de

    goto/16 :goto_1

    :cond_84
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    const p0, 0x7f0b10df

    goto/16 :goto_1

    :cond_85
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10dd

    goto/16 :goto_1

    :cond_86
    const v3, 0x7f0b0f87

    if-ne p0, v3, :cond_87

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f86

    goto/16 :goto_1

    :cond_87
    const v3, 0x7f0b0f96

    if-ne p0, v3, :cond_88

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f95

    goto/16 :goto_1

    :cond_88
    const v3, 0x7f0b0fef

    if-ne p0, v3, :cond_8c

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    :cond_89
    const p0, 0x7f0b0fee

    goto/16 :goto_1

    :cond_8a
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    const p0, 0x7f0b0fed

    goto/16 :goto_1

    :cond_8b
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fec

    goto/16 :goto_1

    :cond_8c
    const v3, 0x7f0b1027

    if-ne p0, v3, :cond_90

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    const p0, 0x7f0b1024

    goto/16 :goto_1

    :cond_8d
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    const p0, 0x7f0b1025

    goto/16 :goto_1

    :cond_8e
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    const p0, 0x7f0b1026

    goto/16 :goto_1

    :cond_8f
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1023

    goto/16 :goto_1

    :cond_90
    const v3, 0x7f0b10d7

    if-ne p0, v3, :cond_93

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    :cond_91
    const p0, 0x7f0b10d5

    goto/16 :goto_1

    :cond_92
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10d6

    goto/16 :goto_1

    :cond_93
    const v3, 0x7f0b10ca

    if-ne p0, v3, :cond_95

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    const p0, 0x7f0b10c8

    goto/16 :goto_1

    :cond_94
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10c9

    goto/16 :goto_1

    :cond_95
    const v3, 0x7f0b107e

    if-ne p0, v3, :cond_99

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    :cond_96
    const p0, 0x7f0b107d

    goto/16 :goto_1

    :cond_97
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    const p0, 0x7f0b107b

    goto/16 :goto_1

    :cond_98
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b107c

    goto/16 :goto_1

    :cond_99
    const v3, 0x7f0b10cc

    if-ne p0, v3, :cond_9a

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10cb

    goto/16 :goto_1

    :cond_9a
    const v3, 0x7f0b0f9e

    if-ne p0, v3, :cond_9b

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f9d

    goto/16 :goto_1

    :cond_9b
    const v3, 0x7f0b0fa0

    if-ne p0, v3, :cond_9c

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f9f

    goto/16 :goto_1

    :cond_9c
    const v3, 0x7f0b0fdc

    if-ne p0, v3, :cond_a0

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    const p0, 0x7f0b0fd8

    goto/16 :goto_1

    :cond_9d
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    const p0, 0x7f0b0fd9

    goto/16 :goto_1

    :cond_9e
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    const p0, 0x7f0b0fdb

    goto/16 :goto_1

    :cond_9f
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fda

    goto/16 :goto_1

    :cond_a0
    const v3, 0x7f0b1029

    if-ne p0, v3, :cond_a1

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1028

    goto/16 :goto_1

    :cond_a1
    const v3, 0x7f0b102b

    if-ne p0, v3, :cond_a2

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b102a

    goto/16 :goto_1

    :cond_a2
    const v3, 0x7f0b1045

    if-ne p0, v3, :cond_a3

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1044

    goto/16 :goto_1

    :cond_a3
    const v3, 0x7f0b1047

    if-ne p0, v3, :cond_a4

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1046

    goto/16 :goto_1

    :cond_a4
    const v3, 0x7f0b1049

    if-ne p0, v3, :cond_a5

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1048

    goto/16 :goto_1

    :cond_a5
    const v3, 0x7f0b1050

    if-ne p0, v3, :cond_a6

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b104f

    goto/16 :goto_1

    :cond_a6
    const v3, 0x7f0b105b

    if-ne p0, v3, :cond_a7

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b105a

    goto/16 :goto_1

    :cond_a7
    const v3, 0x7f0b105d

    if-ne p0, v3, :cond_a8

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b105c

    goto/16 :goto_1

    :cond_a8
    const v3, 0x7f0b10eb

    if-ne p0, v3, :cond_a9

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10ea

    goto/16 :goto_1

    :cond_a9
    const v3, 0x7f0b10e6

    if-ne p0, v3, :cond_ae

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    :cond_aa
    const p0, 0x7f0b10e2

    goto/16 :goto_1

    :cond_ab
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    const p0, 0x7f0b10e3

    goto/16 :goto_1

    :cond_ac
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f0b10e4

    goto/16 :goto_1

    :cond_ad
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b10e5

    goto/16 :goto_1

    :cond_ae
    const v3, 0x7f0b0f3d

    if-ne p0, v3, :cond_b0

    const-string/jumbo v3, "DCM"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    const p0, 0x7f0b0f3c

    goto/16 :goto_1

    :cond_af
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f3b

    goto/16 :goto_1

    :cond_b0
    const v3, 0x7f0b0f09

    if-ne p0, v3, :cond_1

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_b1
    const p0, 0x7f0b0f0a

    goto/16 :goto_1
.end method
