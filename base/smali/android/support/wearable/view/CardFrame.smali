.class public Landroid/support/wearable/view/CardFrame;
.super Landroid/view/ViewGroup;
.source "CardFrame.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static BOX_FACTOR:F = 0.0f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CONTENT_PADDING_DP:I = 0xc

.field private static final DEFAULT_CONTENT_PADDING_TOP_DP:I = 0x8

.field private static final EDGE_FADE_DISTANCE_DP:I = 0x28

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_UP:I = -0x1

.field public static final NO_EXPANSION:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "CardFrame"


# instance fields
.field private mBoxInset:I

.field private mCanExpand:Z

.field private mCardBaseHeight:I

.field private final mChildClipBounds:Landroid/graphics/Rect;

.field private final mContentPadding:Landroid/graphics/Rect;

.field private final mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

.field private final mEdgeFadeDistance:I

.field private mExpansionDirection:I

.field private mExpansionEnabled:Z

.field private mExpansionFactor:F

.field private mHasBottomInset:Z

.field private final mInsetPadding:Landroid/graphics/Rect;

.field private mRoundDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const v0, 0x3e15fb72    # 0.146467f

    sput v0, Landroid/support/wearable/view/CardFrame;->BOX_FACTOR:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/wearable/view/CardFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CardFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-boolean v1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionEnabled:Z

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/wearable/view/CardFrame;->mExpansionFactor:F

    .line 74
    iput v1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    .line 404
    new-instance v0, Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-direct {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 98
    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFadeDistance:I

    .line 99
    sget v1, Landroid/support/wearable/R$drawable;->card_background:I

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/CardFrame;->setBackgroundResource(I)V

    .line 100
    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 102
    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 104
    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/support/wearable/view/CardFrame;->setContentPadding(IIII)V

    .line 106
    return-void
.end method

.method public static getDefaultSize(IIZ)I
    .locals 2

    .prologue
    .line 386
    .line 387
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 388
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 390
    sparse-switch v1, :sswitch_data_0

    .line 401
    :cond_0
    :goto_0
    :sswitch_0
    return p0

    .line 395
    :sswitch_1
    if-eqz p2, :cond_0

    move p0, v0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 398
    goto :goto_0

    .line 390
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardFrame can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 517
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardFrame can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 522
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardFrame can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 539
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardFrame can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .prologue
    .line 429
    iget v9, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFadeDistance:I

    .line 431
    const/4 v1, 0x0

    .line 432
    const/4 v0, 0x0

    .line 433
    iget-object v2, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 438
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 439
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 440
    iget-boolean v4, p0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    if-eqz v4, :cond_5

    .line 442
    iget v4, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    add-int v4, v3, v2

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 444
    const/4 v0, 0x1

    .line 445
    iget-object v2, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    move v7, v0

    move v8, v1

    .line 452
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v10

    .line 453
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 456
    if-eqz v7, :cond_0

    .line 457
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 464
    :cond_0
    if-eqz v8, :cond_1

    .line 465
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v9

    int-to-float v2, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 473
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 475
    if-eqz v7, :cond_2

    .line 476
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 477
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 478
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 479
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$100(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 480
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$200(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$100(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 481
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$200(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 489
    :cond_2
    if-eqz v8, :cond_3

    .line 490
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 491
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 492
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 493
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 494
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$100(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Shader;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$000(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 495
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$200(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v1}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$100(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 496
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v9

    int-to-float v2, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mEdgeFade:Landroid/support/wearable/view/CardFrame$EdgeFade;

    invoke-static {v0}, Landroid/support/wearable/view/CardFrame$EdgeFade;->access$200(Landroid/support/wearable/view/CardFrame$EdgeFade;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 503
    :cond_3
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 504
    return v6

    .line 446
    :cond_4
    iget v4, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 448
    const/4 v1, 0x1

    .line 449
    iget-object v2, p0, Landroid/support/wearable/view/CardFrame;->mChildClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_5
    move v7, v0

    move v8, v1

    goto/16 :goto_0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getExpansionDirection()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    return v0
.end method

.method public getExpansionFactor()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Landroid/support/wearable/view/CardFrame;->mExpansionFactor:F

    return v0
.end method

.method public isExpansionEnabled()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFrame;->mExpansionEnabled:Z

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    .line 220
    iget-boolean v1, p0, Landroid/support/wearable/view/CardFrame;->mRoundDisplay:Z

    if-eq v0, v1, :cond_0

    .line 221
    iput-boolean v0, p0, Landroid/support/wearable/view/CardFrame;->mRoundDisplay:Z

    .line 222
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 225
    :goto_0
    iget-boolean v1, p0, Landroid/support/wearable/view/CardFrame;->mHasBottomInset:Z

    if-eq v0, v1, :cond_1

    .line 226
    iput-boolean v0, p0, Landroid/support/wearable/view/CardFrame;->mHasBottomInset:Z

    .line 227
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 229
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 224
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 211
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestApplyInsets()V

    .line 212
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 563
    const-class v0, Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 564
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 568
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 569
    const-class v0, Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 570
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CardFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 412
    sub-int v0, p5, p3

    .line 414
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    .line 415
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v4, v3, v1

    .line 416
    iget v1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 418
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    iget-object v5, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    sub-int v1, v0, v1

    .line 424
    :goto_1
    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    .line 422
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 239
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 241
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFrame;->mRoundDisplay:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 248
    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 252
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gez v1, :cond_b

    .line 253
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    neg-int v1, v1

    .line 254
    sub-int/2addr v3, v1

    .line 256
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gez v4, :cond_a

    .line 257
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    neg-int v4, v4

    .line 258
    sub-int/2addr v3, v4

    move v12, v4

    move v4, v3

    move v3, v12

    .line 260
    :goto_1
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-gez v8, :cond_9

    .line 261
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    neg-int v0, v0

    .line 262
    sub-int/2addr v5, v0

    .line 265
    :goto_2
    sget v8, Landroid/support/wearable/view/CardFrame;->BOX_FACTOR:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Landroid/support/wearable/view/CardFrame;->mBoxInset:I

    .line 270
    iget-object v4, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v5, p0, Landroid/support/wearable/view/CardFrame;->mBoxInset:I

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingLeft()I

    move-result v8

    sub-int v1, v8, v1

    sub-int v1, v5, v1

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 271
    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v4, p0, Landroid/support/wearable/view/CardFrame;->mBoxInset:I

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingRight()I

    move-result v5

    sub-int v3, v5, v3

    sub-int v3, v4, v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 272
    iget-boolean v1, p0, Landroid/support/wearable/view/CardFrame;->mHasBottomInset:Z

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v3, p0, Landroid/support/wearable/view/CardFrame;->mBoxInset:I

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v4

    sub-int v0, v4, v0

    sub-int v0, v3, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1, v6}, Landroid/support/wearable/view/CardFrame;->getDefaultSize(IIZ)I

    move-result v5

    .line 291
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2, v2}, Landroid/support/wearable/view/CardFrame;->getDefaultSize(IIZ)I

    move-result v0

    .line 294
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 296
    invoke-virtual {p0, v5, v0}, Landroid/support/wearable/view/CardFrame;->setMeasuredDimension(II)V

    .line 379
    :goto_3
    return-void

    .line 299
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/CardFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 301
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 302
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 311
    iget-boolean v3, p0, Landroid/support/wearable/view/CardFrame;->mExpansionEnabled:Z

    iput-boolean v3, p0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    .line 313
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 314
    :cond_2
    const-string v0, "CardFrame"

    const-string v1, "height measure spec passed with mode UNSPECIFIED, or zero height."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-boolean v2, p0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    .line 317
    iput v2, p0, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    move v0, v2

    move v1, v6

    move v3, v2

    move v4, v2

    .line 352
    :goto_4
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    .line 354
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/support/wearable/view/CardFrame;->mInsetPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    .line 356
    sub-int v9, v5, v9

    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 358
    sub-int/2addr v4, v10

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 362
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 363
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v2, v4}, Landroid/support/wearable/view/CardFrame;->getChildMeasureSpec(III)I

    move-result v4

    .line 365
    invoke-virtual {v8, v4, v3}, Landroid/view/View;->measure(II)V

    .line 366
    if-eqz v1, :cond_7

    .line 367
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v10

    .line 378
    :goto_5
    invoke-virtual {p0, v5, v0}, Landroid/support/wearable/view/CardFrame;->setMeasuredDimension(II)V

    goto :goto_3

    .line 322
    :cond_3
    if-ne v1, v7, :cond_4

    .line 323
    const-string v1, "CardFrame"

    const-string v3, "height measure spec passed with mode EXACT"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-boolean v2, p0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    .line 325
    iput v0, p0, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    .line 326
    iget v0, p0, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    move v1, v2

    move v3, v7

    move v4, v0

    .line 328
    goto :goto_4

    .line 330
    :cond_4
    iput v0, p0, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    .line 331
    iget v0, p0, Landroid/support/wearable/view/CardFrame;->mCardBaseHeight:I

    .line 332
    iget-boolean v1, p0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    if-eqz v1, :cond_5

    .line 333
    int-to-float v0, v0

    iget v1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 335
    :cond_5
    iget v1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    move v1, v2

    move v3, v2

    move v4, v2

    .line 341
    goto/16 :goto_4

    .line 346
    :cond_6
    const/high16 v1, -0x80000000

    .line 348
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    move v4, v3

    move v3, v1

    move v1, v2

    goto/16 :goto_4

    .line 370
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 372
    iget-boolean v1, p0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v4, v0, v10

    if-le v3, v4, :cond_8

    :goto_6
    and-int/2addr v1, v6

    iput-boolean v1, p0, Landroid/support/wearable/view/CardFrame;->mCanExpand:Z

    goto :goto_5

    :cond_8
    move v6, v2

    goto :goto_6

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    move v4, v3

    move v3, v2

    goto/16 :goto_1

    :cond_b
    move v1, v2

    goto/16 :goto_0
.end method

.method public setContentPadding(IIII)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/wearable/view/CardFrame;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 120
    return-void
.end method

.method public setExpansionDirection(I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionDirection:I

    .line 169
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 170
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->invalidate()V

    .line 171
    return-void
.end method

.method public setExpansionEnabled(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionEnabled:Z

    .line 158
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 159
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->invalidate()V

    .line 160
    return-void
.end method

.method public setExpansionFactor(F)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Landroid/support/wearable/view/CardFrame;->mExpansionFactor:F

    .line 179
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->requestLayout()V

    .line 180
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFrame;->invalidate()V

    .line 181
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method
