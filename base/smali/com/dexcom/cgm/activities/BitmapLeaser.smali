.class public Lcom/dexcom/cgm/activities/BitmapLeaser;
.super Ljava/lang/Object;
.source "BitmapLeaser.java"


# static fields
.field public static m_MagArrowBitmap:Landroid/graphics/Bitmap;

.field public static m_MagGlassBitmap:Landroid/graphics/Bitmap;

.field public static m_NotificationBitmap:Landroid/graphics/Bitmap;

.field private static m_arrowBitmapState:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

.field private static m_magGlassBitmapState:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dimensionsMatch(Landroid/graphics/Bitmap;II)Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getArrowBitmap(Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagArrowBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 108
    sput-object p0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_arrowBitmapState:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    .line 118
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p3, p4, p5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagArrowBitmap:Landroid/graphics/Bitmap;

    .line 120
    sput-object p0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_arrowBitmapState:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    .line 121
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagArrowBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    .line 110
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_arrowBitmapState:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    if-ne v0, p0, :cond_0

    .line 112
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagArrowBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p3, p4}, Lcom/dexcom/cgm/activities/BitmapLeaser;->dimensionsMatch(Landroid/graphics/Bitmap;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagArrowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static getM_NotificationBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_NotificationBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_NotificationBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p0, p1}, Lcom/dexcom/cgm/activities/BitmapLeaser;->dimensionsMatch(Landroid/graphics/Bitmap;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_NotificationBitmap:Landroid/graphics/Bitmap;

    .line 54
    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    sput-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_NotificationBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static getMagBitmap(Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagGlassBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 84
    sput-object p0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_magGlassBitmapState:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    .line 95
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p3, p4, p5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagGlassBitmap:Landroid/graphics/Bitmap;

    .line 97
    sput-object p0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_magGlassBitmapState:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    .line 98
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagGlassBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    .line 86
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_magGlassBitmapState:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    if-ne v0, p0, :cond_0

    .line 89
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagGlassBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p3, p4}, Lcom/dexcom/cgm/activities/BitmapLeaser;->dimensionsMatch(Landroid/graphics/Bitmap;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser;->m_MagGlassBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static getMagNoTipBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 64
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;->NO_TIP:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/dexcom/cgm/activities/BitmapLeaser;->getMagBitmap(Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getMagWithTipBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 59
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;->HAS_TIP:Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/dexcom/cgm/activities/BitmapLeaser;->getMagBitmap(Lcom/dexcom/cgm/activities/BitmapLeaser$MagGlassBitmapState;Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getOneArrowBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 69
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;->ONE_ARROW:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/dexcom/cgm/activities/BitmapLeaser;->getArrowBitmap(Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getTwoArrowsBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 74
    sget-object v0, Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;->TWO_ARROWS:Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/dexcom/cgm/activities/BitmapLeaser;->getArrowBitmap(Lcom/dexcom/cgm/activities/BitmapLeaser$ArrowBitmapState;Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
