.class Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;
.super Ljava/util/HashMap;
.source "HwrLanguageID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/HwrLanguageID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 74

    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    const/16 v69, 0x0

    const/16 v41, 0x1

    const/16 v42, 0x2

    const/16 v18, 0xa

    const/16 v27, 0xb

    const/16 v13, 0xc

    const/16 v37, 0xd

    const/16 v54, 0xe

    const/16 v19, 0xf

    const/16 v57, 0x10

    const/16 v38, 0x53

    const/16 v70, 0x54

    const/16 v71, 0x55

    const/16 v3, 0x56

    const/16 v48, 0x57

    const/16 v65, 0x58

    const/16 v31, 0x59

    const/16 v64, 0x5a

    const/16 v5, 0x5b

    const/16 v24, 0x5c

    const/16 v56, 0x5d

    const/16 v10, 0x5e

    const/16 v52, 0x5f

    const/16 v59, 0x60

    const/16 v11, 0x61

    const/16 v49, 0x62

    const/16 v51, 0x63

    const/16 v63, 0x64

    const/16 v28, 0x65

    const/16 v33, 0x66

    const/16 v43, 0x67

    const/16 v9, 0x68

    const/16 v6, 0x69

    const/16 v68, 0x6a

    const/16 v8, 0x6b

    const/16 v40, 0x6c

    const/16 v66, 0x6d

    const/16 v14, 0x6e

    const/16 v39, 0x6f

    const/16 v67, 0x70

    const/16 v30, 0x71

    const/16 v60, 0xc8

    const/16 v34, 0xc9

    const/16 v32, 0xca

    const/16 v25, 0xcb

    const/16 v36, 0xcc

    const/16 v58, 0xce

    const/16 v4, 0xcf

    const/16 v44, 0xd0

    const/16 v46, 0xd1

    const/16 v22, 0xd2

    const/16 v47, 0xd3

    const/16 v7, 0xd4

    const/16 v23, 0xd5

    const/16 v29, 0xd6

    const/16 v45, 0xd7

    const/16 v62, 0xd8

    const/16 v61, 0xd9

    const/16 v17, 0x12c

    const/16 v15, 0x12d

    const/16 v16, 0x12e

    const/16 v21, 0x136

    const/16 v20, 0x137

    const/16 v26, 0x140

    const/16 v53, 0x14a

    const/16 v12, 0x154

    const/16 v35, 0x15e

    const/16 v50, 0x168

    const/16 v55, 0x3e8

    const-string/jumbo v72, "en_US"

    const/16 v73, 0xa

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "eng"

    const/16 v73, 0xa

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ko_KR"

    const/16 v73, 0x1

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "kor"

    const/16 v73, 0x1

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ko_KR-nh"

    const/16 v73, 0x1

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ko_KR_NoHanJa"

    const/16 v73, 0x2

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "zh_CN"

    const/16 v73, 0x0

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "chn"

    const/16 v73, 0x0

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "zh_HK"

    const/16 v73, 0x54

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "zh_TW"

    const/16 v73, 0x55

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ja_JP"

    const/16 v73, 0x53

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "fr_FR"

    const/16 v73, 0xb

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "de_DE"

    const/16 v73, 0xc

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "it_IT"

    const/16 v73, 0xd

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "es_ES"

    const/16 v73, 0xf

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "pt_PT"

    const/16 v73, 0xe

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ru_RU"

    const/16 v73, 0x10

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ms_MY"

    const/16 v73, 0x57

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "id_ID"

    const/16 v73, 0x15e

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "tr_TR"

    const/16 v73, 0x58

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "hi_IN"

    const/16 v73, 0x59

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ar"

    const/16 v73, 0x5b

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "fa_IR"

    const/16 v73, 0x5c

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "th_TH"

    const/16 v73, 0x5a

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "bg_BG"

    const/16 v73, 0x6b

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "kk_KZ"

    const/16 v73, 0x6c

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "uk_UA"

    const/16 v73, 0x6d

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ka_GE"

    const/16 v73, 0x6f

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "el_GR"

    const/16 v73, 0x6e

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "he_IL"

    const/16 v73, 0x71

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ur_PK"

    const/16 v73, 0x70

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "vi_VN"

    const/16 v73, 0x6a

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "az_AZ"

    const/16 v73, 0x69

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ca_ES"

    const/16 v73, 0x68

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "cs_CZ"

    const/16 v73, 0x5e

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "da_DK"

    const/16 v73, 0x61

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ga_IE"

    const/16 v73, 0x65

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "hu_HU"

    const/16 v73, 0x66

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "lt_LT"

    const/16 v73, 0x67

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "nb_NO"

    const/16 v73, 0x62

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "nl_NL"

    const/16 v73, 0x63

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "pl_PL"

    const/16 v73, 0x5f

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ro_RO"

    const/16 v73, 0x5d

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sl_SI"

    const/16 v73, 0x60

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sv_SE"

    const/16 v73, 0x64

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "af_ZA"

    const/16 v73, 0xcf

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "es_US"

    const/16 v73, 0x136

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "et_EE"

    const/16 v73, 0xd2

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "fi_FI"

    const/16 v73, 0xcb

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "fr_CA"

    const/16 v73, 0x140

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "hr_HR"

    const/16 v73, 0xca

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "hy_AM"

    const/16 v73, 0xc9

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "is_IS"

    const/16 v73, 0xcc

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "lv_LV"

    const/16 v73, 0xd0

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "mn_MN"

    const/16 v73, 0xd1

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "mr_IN"

    const/16 v73, 0xd3

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "pt_BR"

    const/16 v73, 0x14a

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sk_SK"

    const/16 v73, 0xce

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sq_AL"

    const/16 v73, 0xc8

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sr_Cyrl_RS"

    const/16 v73, 0xd9

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sr_Latn_RS"

    const/16 v73, 0xd8

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sr_RS"

    const/16 v73, 0xd8

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "be_BY"

    const/16 v73, 0xd4

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "de_AT"

    const/16 v73, 0x154

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "en_AU"

    const/16 v73, 0x12d

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "en_CA"

    const/16 v73, 0x12e

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "en_GB"

    const/16 v73, 0x12c

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "es_MX"

    const/16 v73, 0x137

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "nl_BE"

    const/16 v73, 0x168

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "eu_ES"

    const/16 v73, 0xd5

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "gl_ES"

    const/16 v73, 0xd6

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "mk_MK"

    const/16 v73, 0xd7

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "numeric"

    const/16 v73, 0x56

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "resList"

    const/16 v73, 0x3e8

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
