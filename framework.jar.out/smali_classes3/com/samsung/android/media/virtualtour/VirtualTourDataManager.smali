.class public Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;
.super Ljava/lang/Object;
.source "VirtualTourDataManager.java"

# interfaces
.implements Lcom/samsung/android/media/virtualtour/IVirtualTourSEFParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualTourDataManager"

.field private static final TRANSITION_TYPE_FORWARD_WALK:I = 0x9

.field private static final TRANSITION_TYPE_FORWARD_WALK_PLUS:I = 0xa

.field private static final TRANSITION_TYPE_LATERAL_WALK_LEFT:I = 0xd

.field private static final TRANSITION_TYPE_LATERAL_WALK_PLUS_LEFT:I = 0xb

.field private static final TRANSITION_TYPE_LATERAL_WALK_PLUS_RIGHT:I = 0xc

.field private static final TRANSITION_TYPE_LATERAL_WALK_RIGHT:I = 0xe

.field private static final TRANSITION_TYPE_NONE:I = 0x0

.field private static final TRANSITION_TYPE_STAIRS_DOWN:I = 0xf

.field private static final TRANSITION_TYPE_STAIRS_DOWN_PLUS:I = 0x10

.field private static final TRANSITION_TYPE_STAIRS_UP:I = 0x11

.field private static final TRANSITION_TYPE_STAIRS_UP_PLUS:I = 0x12

.field private static final TRANSITION_TYPE_STEP_DOWN:I = 0x5

.field private static final TRANSITION_TYPE_STEP_DOWN_PLUS:I = 0x6

.field private static final TRANSITION_TYPE_STEP_UP:I = 0x7

.field private static final TRANSITION_TYPE_STEP_UP_PLUS:I = 0x8

.field private static final TRANSITION_TYPE_TURN_LEFT:I = 0x1

.field private static final TRANSITION_TYPE_TURN_RIGHT:I = 0x2

.field private static final TRANSITION_TYPE_WALK_AND_TURN_90_LEFT:I = 0x3

.field private static final TRANSITION_TYPE_WALK_AND_TURN_90_RIGHT:I = 0x4

.field private static final VIRTUALTOUR_NAME_PREFIX:Ljava/lang/String; = "3DTour_"

.field private static final m_sMetadataVersion:Ljava/lang/String; = "2.0.0"


# instance fields
.field public aTransitionsType:[I

.field private aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

.field public eViewerMetadataMode:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

.field public mAngles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public m_cImageProvider:Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

.field public m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

.field public noOfImages:I

.field public transitiontypeArrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_cImageProvider:Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTransitionsType:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->noOfImages:I

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    const-string/jumbo v1, "2.0.0"

    invoke-direct {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    return-void
.end method

.method private ReadXMLMetaData(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const-string/jumbo v0, "xmlData "

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "LocationNode"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v3, v2

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v3, v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v1, "TilePose"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const-string/jumbo v0, "VirtualTourDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Tile Pose Count "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_2
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v6, "TilePoseID"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const-string/jumbo v6, "VirtualTourDataManager"

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private WriteXMLMetaData(IFF[I[F[I[Lcom/samsung/android/media/virtualtour/CVector3;[Lcom/samsung/android/media/virtualtour/CVector3;Ljava/util/Vector;)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF[I[F[I[",
            "Lcom/samsung/android/media/virtualtour/CVector3;",
            "[",
            "Lcom/samsung/android/media/virtualtour/CVector3;",
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/media/virtualtour/CAffineParams;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string/jumbo v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, ""

    const-string/jumbo v3, "VirtualTour"

    invoke-interface {v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Images"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Version"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "2.0.0"

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Version"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Camera"

    invoke-interface {v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "HFOV"

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "VFOV"

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Camera"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    move/from16 v0, p1

    if-lt v1, v0, :cond_0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "VirtualTour"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v5, ""

    const-string/jumbo v6, "LocationNode"

    invoke-interface {v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "ID"

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v5, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move v4, v1

    move-object v1, v3

    :goto_1
    const-string/jumbo v3, ""

    const-string/jumbo v5, "TilePose"

    invoke-interface {v7, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, ""

    const-string/jumbo v5, "ID"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v3, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v1, p1, -0x1

    if-lt v4, v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    add-int/lit8 v1, p1, -0x1

    if-lt v4, v1, :cond_4

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v3, ""

    const-string/jumbo v10, "NextTransition"

    invoke-interface {v7, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, ""

    const-string/jumbo v10, "Type"

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, ""

    const-string/jumbo v10, "Amount"

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v3, v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, ""

    const-string/jumbo v3, "Vector"

    invoke-interface {v7, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, p1, -0x1

    if-lt v4, v1, :cond_5

    new-instance v1, Lcom/samsung/android/media/virtualtour/CVector3;

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v1, v3, v10, v11}, Lcom/samsung/android/media/virtualtour/CVector3;-><init>(FFF)V

    :goto_4
    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/media/virtualtour/CVector3;

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v1, v3, v10, v11}, Lcom/samsung/android/media/virtualtour/CVector3;-><init>(FFF)V

    :cond_1
    const-string/jumbo v3, "X"

    iget v10, v1, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v11, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "Y"

    iget v10, v1, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7, v11, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "Z"

    iget v1, v1, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    invoke-interface {v7, v10, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, ""

    const-string/jumbo v3, "Vector"

    invoke-interface {v7, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_6

    :cond_2
    const/4 v1, 0x6

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "I"

    aput-object v3, v10, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "II"

    aput-object v3, v10, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "III"

    aput-object v3, v10, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "IV"

    aput-object v3, v10, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "V"

    aput-object v3, v10, v1

    const/4 v1, 0x5

    const-string/jumbo v3, "VI"

    aput-object v3, v10, v1

    invoke-virtual/range {p9 .. p9}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_7

    move v1, v2

    :goto_5
    const-string/jumbo v2, ""

    const-string/jumbo v3, "NextTransition"

    invoke-interface {v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "TilePose"

    invoke-interface {v7, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    move v4, v2

    move v2, v1

    move-object v1, v5

    goto/16 :goto_1

    :cond_3
    aget v1, p4, v4

    goto/16 :goto_2

    :cond_4
    aget v1, p5, v4

    goto/16 :goto_3

    :cond_5
    aget-object v1, p7, v4

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    move v1, v2

    goto :goto_5

    :cond_7
    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/media/virtualtour/CAffineParams;

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, ""

    const-string/jumbo v11, "AffineParams"

    invoke-interface {v7, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, ""

    const-string/jumbo v11, "Param1"

    invoke-interface {v7, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    :goto_6
    const/4 v11, 0x4

    if-lt v3, v11, :cond_8

    const-string/jumbo v3, ""

    const-string/jumbo v11, "Param1"

    invoke-interface {v7, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, ""

    const-string/jumbo v11, "Param2"

    invoke-interface {v7, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x0

    :goto_7
    const/4 v11, 0x6

    if-lt v3, v11, :cond_9

    const-string/jumbo v1, ""

    const-string/jumbo v3, "Param2"

    invoke-interface {v7, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, ""

    const-string/jumbo v3, "AffineParams"

    invoke-interface {v7, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v1, v2

    goto :goto_5

    :cond_8
    const-string/jumbo v11, ""

    aget-object v12, v10, v3

    iget-object v13, v1, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param1:[F

    aget v13, v13, v3

    invoke-static {v13}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    const-string/jumbo v11, ""

    aget-object v12, v10, v3

    iget-object v13, v1, Lcom/samsung/android/media/virtualtour/CAffineParams;->m_pf32Param2:[F

    aget v13, v13, v3

    invoke-static {v13}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    move v4, v2

    move v2, v1

    move-object v1, v5

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v3, ""

    const-string/jumbo v4, "LocationNode"

    invoke-interface {v7, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    move-object v4, v6

    move v14, v2

    move v2, v1

    move v1, v14

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static applyOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p0

    :cond_0
    const-string/jumbo v0, "VirtualTourDataManager"

    const-string/jumbo v2, "Bitmap Is Recycled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x10e

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    :try_start_0
    new-array v3, v0, [B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    if-nez v1, :cond_1

    :goto_1
    if-nez v2, :cond_2

    :goto_2
    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-nez v1, :cond_3

    :goto_3
    if-nez v2, :cond_4

    :goto_4
    throw v0

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_4
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private deleteFolder(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/CharacterData;

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    check-cast v0, Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GetSefDataCount(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->getDataCount(Ljava/io/File;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public GetSefOrientation(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "Orientation"

    invoke-virtual {v0, v2, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public decodeSEF(Ljava/lang/String;)Z
    .locals 14

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v12, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x850

    invoke-static {v0, v3}, Lcom/samsung/android/media/SemExtendedFormat;->hasData(Ljava/io/File;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "VirtualTourDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\' is a not Virtual Tour SEF File"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const-string/jumbo v0, "VirtualTourDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\' is a Virtual Tour SEF File"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-nez v0, :cond_1

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->getDataCount(Ljava/io/File;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move v3, v0

    :goto_3
    const-string/jumbo v0, "VirtualTourDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Number of SEF data :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    nop

    nop

    if-gtz v3, :cond_2

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "Orientation"

    invoke-virtual {v0, v3, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v4

    goto :goto_3

    :cond_2
    new-array v3, v12, [[B

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->getKeyNameArray(Ljava/io/File;)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    :goto_4
    const/4 v0, 0x0

    :try_start_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-static {v5, v1}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    aget-object v0, v3, v4

    if-eqz v0, :cond_4

    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aget-object v0, v3, v4

    array-length v7, v0

    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->RAW_BINARY:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->eViewerMetadataMode:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    const/16 v3, 0x14

    const/4 v5, 0x6

    if-ne v2, v5, :cond_5

    :cond_3
    move v13, v1

    move v1, v0

    move v0, v13

    :goto_6
    add-int/lit8 v5, v8, -0x1

    new-array v9, v5, [F

    add-int/lit8 v5, v8, -0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTransitionsType:[I

    new-array v5, v8, [Lcom/samsung/android/media/virtualtour/CVector3;

    iput-object v5, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

    move v5, v4

    :goto_7
    add-int/lit8 v10, v8, -0x1

    if-lt v5, v10, :cond_6

    :goto_8
    add-int/lit8 v5, v8, -0x1

    if-lt v4, v5, :cond_e

    invoke-virtual {p0, v8}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->setNoOfImages(I)V

    new-instance v4, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

    invoke-direct {v4, p1}, Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_cImageProvider:Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

    iget-object v4, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v4, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->setHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->setWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v0, v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->setCaptureOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->setmAngles(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->setTransitionType(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-lt v3, v7, :cond_10

    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "VirtualTourDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[TIME] DecodeSEF::XMLParsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_4
    const-string/jumbo v0, "VirtualTourDataManager"

    const-string/jumbo v1, "Failed in SEF decode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    const/16 v5, 0x8

    if-eq v2, v5, :cond_3

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTransitionsType:[I

    aput v10, v11, v5

    add-int/lit8 v3, v3, 0x4

    const/high16 v11, 0x7fc00000    # NaNf

    aput v11, v9, v5

    if-eqz v10, :cond_8

    if-ne v10, v12, :cond_9

    :cond_7
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v10

    aput v10, v9, v5

    iget-object v10, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    aget v11, v9, v5

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x4

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    :cond_8
    const-string/jumbo v0, "SEFParfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported Transition Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_9
    const/4 v11, 0x2

    if-eq v10, v11, :cond_7

    const/16 v11, 0x9

    if-ne v10, v11, :cond_b

    :cond_a
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v10

    aput v10, v9, v5

    iget-object v10, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    aget v11, v9, v5

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x4

    goto :goto_a

    :cond_b
    const/16 v11, 0xa

    if-eq v10, v11, :cond_a

    const/16 v11, 0xd

    if-ne v10, v11, :cond_d

    :cond_c
    iget-object v10, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

    invoke-virtual {p0, v6}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->newVector3(Ljava/nio/ByteBuffer;)Lcom/samsung/android/media/virtualtour/CVector3;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    add-int/lit8 v3, v3, 0x4

    goto :goto_a

    :cond_d
    const/16 v11, 0xb

    if-eq v10, v11, :cond_c

    const/16 v11, 0xe

    if-eq v10, v11, :cond_c

    const/16 v11, 0xc

    if-eq v10, v11, :cond_c

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    add-int/lit8 v3, v3, 0x4

    goto :goto_a

    :cond_e
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    add-int/lit8 v3, v3, 0x4

    if-eq v5, v12, :cond_f

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    :goto_b
    add-int/lit8 v3, v3, 0xc

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_f
    iget-object v5, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

    invoke-virtual {p0, v6}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->newVector3(Ljava/nio/ByteBuffer;)Lcom/samsung/android/media/virtualtour/CVector3;

    move-result-object v9

    aput-object v9, v5, v4

    goto :goto_b

    :cond_10
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v3, v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->loadMap(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->STRUCTURED_XML:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    iput-object v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->eViewerMetadataMode:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    goto/16 :goto_9

    :cond_11
    const-string/jumbo v2, "VirtualTourDataManager"

    const-string/jumbo v3, "XML Parsing Failed - Continuing with BIN"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method public encodeSEF(Ljava/lang/String;Ljava/lang/String;I[I[F[I[Lcom/samsung/android/media/virtualtour/CVector3;Ljava/util/Vector;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[I[F[I[",
            "Lcom/samsung/android/media/virtualtour/CVector3;",
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/media/virtualtour/CAffineParams;",
            ">;)I"
        }
    .end annotation

    if-lez p3, :cond_2

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "3DTour_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "1.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v4, Lcom/samsung/android/media/virtualtour/Settings;->cameraHorizontalViewAngle:F

    sget v5, Lcom/samsung/android/media/virtualtour/Settings;->cameraVerticalViewAngle:F

    const/4 v3, 0x0

    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "VirtualTourHeader.bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v12, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x4

    :try_start_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v12, v3, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v3, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v12, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v12, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x4

    invoke-virtual {v12, v2, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p3, -0x1

    if-lt v2, v3, :cond_3

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    add-int/lit8 v2, p3, -0x1

    if-lt v3, v2, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v2, 0x0

    if-nez p5, :cond_11

    :cond_0
    :goto_2
    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    :goto_3
    if-nez v2, :cond_13

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "VirtualTourDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "XML Formatting Time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v2, v14

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v12, :cond_14

    :cond_1
    :goto_5
    add-int/lit8 v2, p3, 0x1

    new-array v5, v2, [Ljava/lang/String;

    add-int/lit8 v2, p3, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "VirtualTourHeader.bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x0

    const-string/jumbo v3, "VirtualTour_Info"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    :goto_6
    move/from16 v0, p3

    if-le v2, v0, :cond_16

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_2
    aget-object v2, v5, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_7
    :try_start_3
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v6, v4

    new-instance v7, Ljava/io/File;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x850

    const/4 v9, 0x1

    invoke-static {v2, v4, v7, v8, v9}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result v2

    :goto_8
    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    :goto_9
    move/from16 v0, p3

    if-le v4, v0, :cond_17

    const/4 v2, 0x1

    if-eq v3, v2, :cond_18

    const/4 v2, -0x1

    return v2

    :cond_2
    const-string/jumbo v2, "VirtualTourDataManager"

    const-string/jumbo v3, "No Images to save"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    return v2

    :cond_3
    :try_start_4
    aget v3, p4, v2

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v12, v6, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    :cond_4
    if-nez p5, :cond_7

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v3, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x2

    if-eq v3, v6, :cond_4

    const/16 v6, 0x9

    if-ne v3, v6, :cond_8

    :cond_6
    if-nez p5, :cond_a

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v3, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_0
    move-exception v2

    move-object v3, v12

    :goto_b
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_7
    const/4 v3, 0x4

    :try_start_7
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    aget v6, p5, v2

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v3, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    :catch_2
    move-exception v2

    :goto_c
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v12, :cond_1

    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_8
    const/16 v6, 0xa

    if-eq v3, v6, :cond_6

    const/16 v6, 0xd

    if-ne v3, v6, :cond_b

    :cond_9
    const/4 v3, 0x4

    :try_start_a
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v3, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v3, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception v2

    :goto_d
    if-nez v12, :cond_15

    :goto_e
    throw v2

    :cond_a
    const/4 v3, 0x4

    :try_start_b
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    aget v6, p5, v2

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v3, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto/16 :goto_a

    :cond_b
    const/16 v6, 0xb

    if-eq v3, v6, :cond_9

    const/16 v6, 0xe

    if-eq v3, v6, :cond_9

    const/16 v6, 0xc

    if-eq v3, v6, :cond_9

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v3, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto/16 :goto_a

    :cond_c
    if-nez p6, :cond_f

    :cond_d
    const/4 v2, 0x0

    :goto_f
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v12, v6, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v6, 0x1

    if-eq v2, v6, :cond_10

    :cond_e
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    :goto_10
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_f
    if-eqz p7, :cond_d

    aget v2, p6, v3

    goto :goto_f

    :cond_10
    aget-object v2, p7, v3

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e

    aget-object v2, p7, v3

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e

    aget-object v2, p7, v3

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v6, p7, v3

    iget v6, v6, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v6, p7, v3

    iget v6, v6, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    aget-object v6, p7, v3

    iget v6, v6, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v12, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_10

    :cond_11
    if-eqz p7, :cond_0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->WriteXMLMetaData(IFF[I[F[I[Lcom/samsung/android/media/virtualtour/CVector3;[Lcom/samsung/android/media/virtualtour/CVector3;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto/16 :goto_3

    :cond_13
    invoke-virtual {v12, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    :cond_14
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_15
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_e

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_e

    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "3DTour_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "VirtualTour_%03d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    goto/16 :goto_8

    :cond_17
    :try_start_e
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aget-object v7, v6, v4

    new-instance v8, Ljava/io/File;

    aget-object v9, v5, v4

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v2, v7, v8, v9, v10}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;Ljava/io/File;II)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    move-result v2

    :goto_11
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto/16 :goto_9

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    goto :goto_11

    :cond_18
    return v3

    :catchall_1
    move-exception v2

    move-object v12, v3

    goto/16 :goto_d

    :catchall_2
    move-exception v2

    move-object v12, v3

    goto/16 :goto_d

    :catch_9
    move-exception v2

    move-object v12, v3

    goto/16 :goto_c

    :catch_a
    move-exception v2

    goto/16 :goto_b
.end method

.method public getCaptureOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getCaptureOrientation()I

    move-result v0

    return v0
.end method

.method public getNoOfImages()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->noOfImages:I

    return v0
.end method

.method public getTransitionArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionType()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTransitionsType:[I

    return-object v0
.end method

.method public getaTranslations()[Lcom/samsung/android/media/virtualtour/CVector3;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->aTranslations:[Lcom/samsung/android/media/virtualtour/CVector3;

    return-object v0
.end method

.method public getmAngles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public newVector3(Ljava/nio/ByteBuffer;)Lcom/samsung/android/media/virtualtour/CVector3;
    .locals 4

    new-instance v0, Lcom/samsung/android/media/virtualtour/CVector3;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/virtualtour/CVector3;-><init>(FFF)V

    return-object v0
.end method

.method public setNoOfImages(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->noOfImages:I

    return-void
.end method

.method public setTransitionType(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->transitiontypeArrList:Ljava/util/ArrayList;

    return-void
.end method

.method public setmAngles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->mAngles:Ljava/util/ArrayList;

    return-void
.end method
