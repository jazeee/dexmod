.class public Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "BoxInsetLayout.java"


# static fields
.field public static final BOX_ALL:I = 0xf

.field public static final BOX_BOTTOM:I = 0x8

.field public static final BOX_LEFT:I = 0x1

.field public static final BOX_NONE:I = 0x0

.field public static final BOX_RIGHT:I = 0x4

.field public static final BOX_TOP:I = 0x2


# instance fields
.field public boxedEdges:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 369
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 373
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 377
    iput p4, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 378
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 361
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 358
    iput v2, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 362
    sget-object v0, Landroid/support/wearable/R$styleable;->BoxInsetLayout_Layout:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 363
    sget v1, Landroid/support/wearable/R$styleable;->BoxInsetLayout_Layout_layout_box:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    return-void
.end method

.method public constructor <init>(Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 394
    iget v0, p1, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 395
    iget v0, p1, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->gravity:I

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->gravity:I

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 386
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    .line 390
    return-void
.end method
