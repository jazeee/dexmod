.class Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;
.super Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;
.source "BarcodeTrackerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic",
        "<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLOR_CHOICES:[I

.field private static mCurrentColorIndex:I


# instance fields
.field private volatile mBarcode:Lcom/google/android/gms/vision/barcode/Barcode;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->COLOR_CHOICES:[I

    .line 47
    const/4 v0, 0x0

    sput v0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mCurrentColorIndex:I

    return-void

    .line 42
    :array_0
    .array-data 4
        -0xffff01
        -0xff0001
        -0xff0100
    .end array-data
.end method

.method constructor <init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/TrackedGraphic;-><init>(Lcom/dexcom/cgm/activities/barCodeTools/ui/camera/GraphicOverlay;)V

    .line 56
    sget v0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mCurrentColorIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->COLOR_CHOICES:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mCurrentColorIndex:I

    .line 57
    sget-object v0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->COLOR_CHOICES:[I

    sget v1, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mCurrentColorIndex:I

    aget v0, v0, v1

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mTextPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v1, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mBarcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 84
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/Barcode;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 90
    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->translateX(F)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 91
    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->translateY(F)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 92
    iget v2, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->translateX(F)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 93
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->translateY(F)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 94
    iget-object v2, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 97
    iget-object v0, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method updateItem(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->mBarcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 75
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->postInvalidate()V

    .line 76
    return-void
.end method

.method bridge synthetic updateItem(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/barCodeTools/BarcodeGraphic;->updateItem(Lcom/google/android/gms/vision/barcode/Barcode;)V

    return-void
.end method
