.class public Lcom/samsung/android/media/virtualtour/VirtualTourMap;
.super Ljava/lang/Object;
.source "VirtualTourMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;,
        Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualTourMap"


# instance fields
.field m_bDataReady:Z

.field private m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

.field private m_cTiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;",
            ">;"
        }
    .end annotation
.end field

.field private m_cWalkSets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;",
            ">;"
        }
    .end annotation
.end field

.field private m_cXMLDoc:Lorg/w3c/dom/Document;

.field private m_nCaptureOrientation:I

.field private m_nHeight:I

.field private m_nSpecTileCount:I

.field private m_nTotalTileCount:I

.field private m_nWidth:I

.field private m_sDataSource:Ljava/lang/String;

.field private m_sMetadataVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_sMetadataVersion:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_bDataReady:Z

    iput v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    iput v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    iput v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    return-void
.end method

.method private GetNewFloatArray(I)[F
    .locals 1

    new-array v0, p1, [F

    return-object v0
.end method

.method private GetNewVTDepthMapObject(II[B)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;
    .locals 1

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;II[B)V

    return-object v0
.end method

.method private GetNewVTTileObject(I)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;
    .locals 1

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;I)V

    return-object v0
.end method

.method private GetNewVTTransitionObject(IF[FI)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;
    .locals 6

    new-instance v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;IF[FI)V

    return-object v0
.end method

.method static synthetic access$000(Lcom/samsung/android/media/virtualtour/VirtualTourMap;I)[F
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewFloatArray(I)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/media/virtualtour/VirtualTourMap;II[B)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewVTDepthMapObject(II[B)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    move-result-object v0

    return-object v0
.end method

.method private static getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;
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
.method public getCaptureOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nCaptureOrientation:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    return v0
.end method

.method public getTile(I)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;
    .locals 3

    const-string/jumbo v0, "VTM_GETTILE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TileCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " InTileID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    return-object v0
.end method

.method public getTileCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    return v0
.end method

.method public isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_bDataReady:Z

    return v0
.end method

.method public loadMap(Ljava/lang/String;)Z
    .locals 17

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_sDataSource:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5}, Lorg/xml/sax/InputSource;-><init>()V

    new-instance v6, Ljava/io/StringReader;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_sDataSource:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "VirtualTour"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-gtz v5, :cond_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "Version"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-static {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_sMetadataVersion:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "Camera"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-gtz v5, :cond_3

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "LocationNode"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v2, 0x0

    move v5, v4

    move v4, v2

    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v4, v2, :cond_4

    if-nez v5, :cond_d

    :goto_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_bDataReady:Z

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v5, "Images"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nSpecTileCount:I

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "VirtualTourMap"

    const-string/jumbo v3, "STRUCTURED_XML Metadata Version Not Supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_3
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    const-string/jumbo v6, "HFOV"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;->m_fHFoV:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    const-string/jumbo v6, "VFOV"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v5, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;->m_fVFoV:F

    goto/16 :goto_2

    :cond_4
    invoke-interface {v9, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v6, "TilePose"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    const/4 v2, 0x0

    move v7, v2

    move v6, v5

    move-object v5, v3

    :goto_5
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v7, v2, :cond_5

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v5

    move v5, v6

    goto/16 :goto_3

    :cond_5
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v3, "ID"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewVTTileObject(I)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    move-result-object v12

    const-string/jumbo v3, "NextTransition"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const-string/jumbo v8, "Type"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string/jumbo v13, "Amount"

    invoke-interface {v3, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    const/16 v14, 0x9

    if-ne v8, v14, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    :goto_6
    iget v14, v5, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v5, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    :goto_7
    const-string/jumbo v14, "Vector"

    invoke-interface {v3, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewFloatArray(I)[F

    move-result-object v14

    const/4 v15, 0x0

    const-string/jumbo v16, "X"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "Y"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "Z"

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v14, v15

    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v14, v3}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewVTTransitionObject(IF[FI)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-result-object v13

    const-string/jumbo v3, "AffineParams"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-gtz v3, :cond_a

    :goto_8
    invoke-virtual {v12, v13}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->setNextTransistion(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    invoke-virtual {v2, v11, v12}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nTotalTileCount:I

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_5

    :cond_7
    const/16 v14, 0xa

    if-eq v8, v14, :cond_6

    if-nez v6, :cond_9

    :goto_9
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_8
    new-instance v5, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    invoke-direct {v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;-><init>()V

    iput v11, v5, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nStartID:I

    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_9
    iget v6, v5, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->GetNewFloatArray(I)[F

    move-result-object v14

    const/4 v3, 0x6

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "I"

    aput-object v8, v15, v3

    const/4 v3, 0x1

    const-string/jumbo v8, "II"

    aput-object v8, v15, v3

    const/4 v3, 0x2

    const-string/jumbo v8, "III"

    aput-object v8, v15, v3

    const/4 v3, 0x3

    const-string/jumbo v8, "IV"

    aput-object v8, v15, v3

    const/4 v3, 0x4

    const-string/jumbo v8, "V"

    aput-object v8, v15, v3

    const/4 v3, 0x5

    const-string/jumbo v8, "VI"

    aput-object v8, v15, v3

    const-string/jumbo v3, "Param1"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const/4 v8, 0x0

    :goto_a
    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v8, v0, :cond_b

    const-string/jumbo v3, "Param2"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    :goto_b
    const/4 v8, 0x6

    if-lt v3, v8, :cond_c

    invoke-virtual {v13, v14}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->setAffineParams([F)V

    goto/16 :goto_8

    :cond_b
    aget-object v16, v15, v8

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v8, v3, 0x4

    aget-object v16, v15, v3

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public processMap()Z
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Thread;

    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "VirtualTourMap"

    const-string/jumbo v1, "Height (and/or) Width == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v2, v0, :cond_3

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "VirtualTourMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[TIME] Threaded DepthMap Time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr v0, v6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    new-instance v5, Ljava/lang/Thread;

    new-instance v8, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;

    invoke-direct {v8, p0, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;-><init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;)V

    invoke-direct {v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v5, v4, v1

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v1, v0

    goto :goto_0

    :cond_3
    :try_start_1
    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    aput-object v0, v4, v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cXMLDoc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cTiles:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cWalkSets:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_cCamera:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourCamera;

    return-void
.end method

.method public setCaptureOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nCaptureOrientation:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nHeight:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->m_nWidth:I

    return-void
.end method
