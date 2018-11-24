.class Landroid/support/wearable/view/WearableListView$SmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "WearableListView.java"


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private final mLayoutManager:Landroid/support/wearable/view/WearableListView$LayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/wearable/view/WearableListView$LayoutManager;)V
    .locals 0

    .prologue
    .line 1222
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 1223
    iput-object p2, p0, Landroid/support/wearable/view/WearableListView$SmoothScroller;->mLayoutManager:Landroid/support/wearable/view/WearableListView$LayoutManager;

    .line 1224
    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 2

    .prologue
    .line 1241
    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    add-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    .line 1234
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1246
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$SmoothScroller;->mLayoutManager:Landroid/support/wearable/view/WearableListView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1247
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1249
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 1228
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStart()V

    .line 1229
    return-void
.end method
