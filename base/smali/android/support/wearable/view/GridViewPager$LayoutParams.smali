.class public Landroid/support/wearable/view/GridViewPager$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridViewPager.java"


# instance fields
.field public gravity:I

.field public needsMeasure:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2358
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2359
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 2362
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2364
    invoke-static {}, Landroid/support/wearable/view/GridViewPager;->access$500()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2365
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/GridViewPager$LayoutParams;->gravity:I

    .line 2366
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2367
    return-void
.end method
