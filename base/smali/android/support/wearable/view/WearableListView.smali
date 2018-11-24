.class public Landroid/support/wearable/view/WearableListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "WearableListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final BOTTOM_TAP_REGION_PERCENTAGE:F = 0.33f

.field private static final CENTERING_ANIMATION_DURATION_MS:J = 0x96L

.field private static final FLIP_ANIMATION_DURATION_MS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "WearableListView"

.field private static final THIRD:I = 0x3

.field private static final TOP_TAP_REGION_PERCENTAGE:F = 0.33f


# instance fields
.field private mCanClick:Z

.field private mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

.field private mGestureDirectionLocked:Z

.field private mGreedyTouchMode:Z

.field private mInitialOffset:I

.field private mLastScrollChange:I

.field private final mLocation:[I

.field private final mMaxFlingVelocity:I

.field private mMaximizeSingleItem:Z

.field private final mMinFlingVelocity:I

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private final mOnCentralPositionChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/wearable/view/WearableListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

.field private mPossibleVerticalSwipe:Z

.field private final mPressedRunnable:Ljava/lang/Runnable;

.field private mPressedView:Landroid/view/View;

.field private mPreviousCentral:I

.field private final mReleasedRunnable:Ljava/lang/Runnable;

.field private mScrollAnimator:Landroid/animation/Animator;

.field private mScroller:Landroid/widget/Scroller;

.field private mSetScrollVerticallyProperty:Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

.field private mStartFirstTop:F

.field private mStartX:F

.field private mStartY:F

.field private mTapPositionX:I

.field private mTapPositionY:I

.field private final mTapRegions:[F

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/WearableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    .line 70
    new-instance v0, Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mSetScrollVerticallyProperty:Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    .line 92
    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    .line 98
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    .line 101
    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I

    .line 104
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    .line 113
    iput-object v4, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    .line 115
    new-instance v0, Landroid/support/wearable/view/WearableListView$1;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/WearableListView$1;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedRunnable:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Landroid/support/wearable/view/WearableListView$2;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/WearableListView$2;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mReleasedRunnable:Ljava/lang/Runnable;

    .line 134
    new-instance v0, Landroid/support/wearable/view/WearableListView$3;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/WearableListView$3;-><init>(Landroid/support/wearable/view/WearableListView;)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 160
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView;->setHasFixedSize(Z)V

    .line 161
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView;->setOverScrollMode(I)V

    .line 162
    new-instance v0, Landroid/support/wearable/view/WearableListView$LayoutManager;

    invoke-direct {v0, p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;-><init>(Landroid/support/wearable/view/WearableListView;Landroid/support/wearable/view/WearableListView$1;)V

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 164
    new-instance v0, Landroid/support/wearable/view/WearableListView$4;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/WearableListView$4;-><init>(Landroid/support/wearable/view/WearableListView;)V

    .line 180
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 182
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    .line 185
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableListView;->mMinFlingVelocity:I

    .line 186
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/WearableListView;->mMaxFlingVelocity:I

    .line 187
    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/WearableListView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/wearable/view/WearableListView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    return v0
.end method

.method static synthetic access$1200(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getItemHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/support/wearable/view/WearableListView;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mMaximizeSingleItem:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/support/wearable/view/WearableListView;)Landroid/support/wearable/view/WearableListView$OnOverScrollListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getTopViewMaxTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    return v0
.end method

.method static synthetic access$1700(Landroid/support/wearable/view/WearableListView;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->setScrollVertically(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/wearable/view/WearableListView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->releasePressedItem()V

    return-void
.end method

.method static synthetic access$400(Landroid/support/wearable/view/WearableListView;Landroid/view/MotionEvent;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/WearableListView;->handleTouchUp(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/wearable/view/WearableListView;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->onScroll(I)V

    return-void
.end method

.method static synthetic access$702(Landroid/support/wearable/view/WearableListView;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    return p1
.end method

.method static synthetic access$800(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/support/wearable/view/WearableListView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I

    return v0
.end method

.method static synthetic access$902(Landroid/support/wearable/view/WearableListView;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Landroid/support/wearable/view/WearableListView;->mPreviousCentral:I

    return p1
.end method

.method private animateToMiddle(II)V
    .locals 4

    .prologue
    .line 422
    if-ne p1, p2, :cond_0

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newCenterIndex must be different from oldCenterIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 428
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v2, v1

    .line 429
    const-wide/16 v2, 0x96

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJ)V

    .line 430
    return-void
.end method

.method private checkForTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 387
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 391
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 392
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v3

    .line 393
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 394
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v4

    .line 395
    iget-object v5, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    invoke-direct {p0, v5}, Landroid/support/wearable/view/WearableListView;->computeTapRegions([F)V

    .line 396
    iget-object v5, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v5, v5, v0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v5, v5, v1

    cmpg-float v5, v2, v5

    if-gez v5, :cond_3

    .line 397
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    invoke-interface {v0, v4}, Landroid/support/wearable/view/WearableListView$ClickListener;->onClick(Landroid/support/wearable/view/WearableListView$ViewHolder;)V

    :cond_2
    move v0, v1

    .line 400
    goto :goto_0

    .line 402
    :cond_3
    if-lez v3, :cond_4

    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v4, v4, v0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_4

    .line 403
    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, v0, v3}, Landroid/support/wearable/view/WearableListView;->animateToMiddle(II)V

    move v0, v1

    .line 404
    goto :goto_0

    .line 406
    :cond_4
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v4, v4, v1

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_5

    .line 407
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0, v3}, Landroid/support/wearable/view/WearableListView;->animateToMiddle(II)V

    move v0, v1

    .line 408
    goto :goto_0

    .line 410
    :cond_5
    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    aget v3, v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    if-eqz v2, :cond_0

    .line 415
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    invoke-interface {v0}, Landroid/support/wearable/view/WearableListView$ClickListener;->onTopEmptyRegionClick()V

    move v0, v1

    .line 416
    goto :goto_0
.end method

.method private computeTapRegions([F)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 690
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    aput v5, v1, v6

    aput v5, v0, v5

    .line 691
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getLocationOnScreen([I)V

    .line 692
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mLocation:[I

    aget v0, v0, v6

    .line 693
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHeight()I

    move-result v1

    .line 694
    int-to-float v2, v0

    int-to-float v3, v1

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p1, v5

    .line 695
    int-to-float v0, v0

    int-to-float v1, v1

    const v2, 0x3f2b851e    # 0.66999996f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v6

    .line 696
    return-void
.end method

.method private findCenterViewIndex()I
    .locals 8

    .prologue
    const/4 v4, -0x1

    .line 545
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v5

    .line 547
    const v1, 0x7fffffff

    .line 548
    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I

    move-result v6

    .line 549
    const/4 v2, 0x0

    move v3, v4

    :goto_0
    if-ge v2, v5, :cond_0

    .line 550
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 551
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getTop()I

    move-result v7

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->getCenterYPos(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v7

    .line 552
    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 553
    if-ge v0, v1, :cond_2

    move v1, v2

    .line 549
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 558
    :cond_0
    if-ne v3, v4, :cond_1

    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t find central view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_1
    return v3

    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method private getAdjustedHeight()I
    .locals 1

    .prologue
    .line 682
    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private static getAdjustedHeight(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 686
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static getCenterYPos(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getItemHeight()I
    .locals 1

    .prologue
    .line 606
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getTopViewMaxTop()I
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private handlePossibleVerticalSwipe(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 290
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mGestureDirectionLocked:Z

    if-eqz v0, :cond_0

    .line 291
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    .line 304
    :goto_0
    return v0

    .line 293
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 294
    iget v1, p0, Landroid/support/wearable/view/WearableListView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 295
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 298
    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    iget v4, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 299
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    .line 302
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mGestureDirectionLocked:Z

    .line 304
    :cond_2
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    goto :goto_0
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 658
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionX:I

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionY:I

    .line 661
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 662
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableListView;->computeTapRegions([F)V

    .line 663
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mTapRegions:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 664
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 665
    instance-of v0, v0, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_0

    .line 668
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mReleasedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 669
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mPressedRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 674
    :cond_0
    return-void
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;I)V
    .locals 4

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->checkForTap(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_0

    .line 572
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mReleasedRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    if-nez p2, :cond_0

    .line 583
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    invoke-interface {v0}, Landroid/support/wearable/view/WearableListView$OnOverScrollListener;->onOverScroll()V

    goto :goto_0

    .line 586
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->animateToCenter()V

    goto :goto_0
.end method

.method private isOverScrolling()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Landroid/support/wearable/view/WearableListView;->mStartFirstTop:F

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getTopViewMaxTop()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onScroll(I)V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 353
    invoke-interface {v0, p1}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onScroll(I)V

    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method private releasePressedItem()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mPressedView:Landroid/view/View;

    .line 345
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mPressedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 349
    :cond_1
    return-void
.end method

.method private setScrollVertically(I)V
    .locals 2

    .prologue
    .line 677
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    sub-int v1, p1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/view/WearableListView;->scrollBy(II)V

    .line 678
    iput p1, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    .line 679
    return-void
.end method

.method private startScrollAnimation(IJJLandroid/animation/Animator$AnimatorListener;)V
    .locals 10

    .prologue
    .line 443
    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 444
    return-void
.end method

.method private startScrollAnimation(Ljava/util/List;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 433
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJJ)V

    .line 434
    return-void
.end method

.method private startScrollAnimation(Ljava/util/List;IJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;IJJ)V"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(Ljava/util/List;IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 439
    return-void
.end method

.method private startScrollAnimation(Ljava/util/List;IJJLandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;IJJ",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 448
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 452
    :cond_0
    iput v2, p0, Landroid/support/wearable/view/WearableListView;->mLastScrollChange:I

    .line 453
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mSetScrollVerticallyProperty:Landroid/support/wearable/view/WearableListView$SetScrollVerticallyProperty;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    const/4 v2, 0x1

    neg-int v3, p2

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 456
    if-eqz p1, :cond_3

    .line 457
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 459
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 460
    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    .line 464
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 465
    if-eqz p7, :cond_1

    .line 466
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 468
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_2

    .line 469
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 471
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 472
    return-void

    .line 462
    :cond_3
    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScrollAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method


# virtual methods
.method public addOnCentralPositionChangedListener(Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method

.method public addOnScrollListener(Landroid/support/wearable/view/WearableListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public animateToCenter()V
    .locals 7

    .prologue
    .line 624
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v0

    .line 625
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 626
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v1, v0

    .line 627
    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x0

    new-instance v6, Landroid/support/wearable/view/WearableListView$5;

    invoke-direct {v6, p0}, Landroid/support/wearable/view/WearableListView$5;-><init>(Landroid/support/wearable/view/WearableListView;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 636
    return-void
.end method

.method public animateToInitialPosition(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 645
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v1, v0

    .line 646
    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x0

    new-instance v6, Landroid/support/wearable/view/WearableListView$6;

    invoke-direct {v6, p0, p1}, Landroid/support/wearable/view/WearableListView$6;-><init>(Landroid/support/wearable/view/WearableListView;Ljava/lang/Runnable;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/WearableListView;->startScrollAnimation(IJJLandroid/animation/Animator$AnimatorListener;)V

    .line 655
    return-void
.end method

.method public fling(II)Z
    .locals 11

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 476
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v1

    .line 481
    :cond_1
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v0

    .line 482
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildPosition(Landroid/view/View;)I

    move-result v10

    .line 484
    if-nez v10, :cond_2

    if-ltz p2, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_4

    if-lez p2, :cond_4

    .line 486
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v1

    goto :goto_0

    .line 489
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/support/wearable/view/WearableListView;->mMinFlingVelocity:I

    if-lt v0, v2, :cond_0

    .line 492
    iget v0, p0, Landroid/support/wearable/view/WearableListView;->mMaxFlingVelocity:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Landroid/support/wearable/view/WearableListView;->mMaxFlingVelocity:I

    neg-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 494
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_5

    .line 495
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v9}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    .line 497
    :cond_5
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 499
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 500
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getPaddingTop()I

    move-result v2

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getAdjustedHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/2addr v0, v2

    .line 501
    if-nez v0, :cond_6

    .line 504
    if-lez v4, :cond_7

    move v0, v9

    .line 506
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v10

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 508
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->smoothScrollToPosition(I)V

    move v1, v9

    .line 509
    goto :goto_0

    .line 504
    :cond_7
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getBaseline()I

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 215
    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v0

    .line 216
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 219
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 220
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getBaseline()I

    move-result v0

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCentralViewTop()I
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getPaddingTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->getItemHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView;->getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/wearable/view/WearableListView$ViewHolder;
    .locals 1

    .prologue
    .line 521
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$ViewHolder;

    return-object v0
.end method

.method public getMaximizeSingleItem()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mMaximizeSingleItem:Z

    return v0
.end method

.method public isAtTop()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 230
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->findCenterViewIndex()I

    move-result v1

    .line 235
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 236
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 286
    :goto_0
    return v0

    .line 273
    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mGreedyTouchMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 275
    if-nez v0, :cond_4

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/WearableListView;->mStartX:F

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/WearableListView;->mStartY:F

    .line 278
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    iput v0, p0, Landroid/support/wearable/view/WearableListView;->mStartFirstTop:F

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    .line 280
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mGestureDirectionLocked:Z

    .line 284
    :cond_1
    :goto_2
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 286
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 278
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 281
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->handlePossibleVerticalSwipe(Landroid/view/MotionEvent;)Z

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getScrollState()I

    move-result v2

    .line 316
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 317
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 319
    if-nez v3, :cond_2

    .line 320
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 321
    :cond_2
    if-ne v3, v4, :cond_3

    .line 322
    invoke-direct {p0, p1, v2}, Landroid/support/wearable/view/WearableListView;->handleTouchUp(Landroid/view/MotionEvent;I)V

    .line 323
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 324
    :cond_3
    const/4 v2, 0x2

    if-ne v3, v2, :cond_6

    .line 325
    iget v2, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Landroid/support/wearable/view/WearableListView;->mTapPositionY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/wearable/view/WearableListView;->mTouchSlop:I

    if-lt v2, v3, :cond_5

    .line 327
    :cond_4
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView;->releasePressedItem()V

    .line 328
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    .line 330
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView;->handlePossibleVerticalSwipe(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 331
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/wearable/view/WearableListView;->mPossibleVerticalSwipe:Z

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 332
    :cond_6
    const/4 v2, 0x3

    if-ne v3, v2, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 334
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableListView;->mCanClick:Z

    goto :goto_0
.end method

.method public removeOnCentralPositionChangedListener(Landroid/support/wearable/view/WearableListView$OnCentralPositionChangedListener;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnCentralPositionChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 383
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/wearable/view/WearableListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public resetLayoutManager()V
    .locals 2

    .prologue
    .line 244
    new-instance v0, Landroid/support/wearable/view/WearableListView$LayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;-><init>(Landroid/support/wearable/view/WearableListView;Landroid/support/wearable/view/WearableListView$1;)V

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 245
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 196
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 198
    if-eqz p1, :cond_1

    .line 199
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 201
    :cond_1
    return-void
.end method

.method public setClickListener(Landroid/support/wearable/view/WearableListView$ClickListener;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView;->mClickListener:Landroid/support/wearable/view/WearableListView$ClickListener;

    .line 529
    return-void
.end method

.method public setGreedyTouchMode(Z)V
    .locals 0

    .prologue
    .line 253
    iput-boolean p1, p0, Landroid/support/wearable/view/WearableListView;->mGreedyTouchMode:Z

    .line 254
    return-void
.end method

.method public setInitialOffset(I)V
    .locals 0

    .prologue
    .line 264
    iput p1, p0, Landroid/support/wearable/view/WearableListView;->mInitialOffset:I

    .line 265
    return-void
.end method

.method public setMaximizeSingleItem(Z)V
    .locals 0

    .prologue
    .line 712
    iput-boolean p1, p0, Landroid/support/wearable/view/WearableListView;->mMaximizeSingleItem:Z

    .line 713
    return-void
.end method

.method public setOverScrollListener(Landroid/support/wearable/view/WearableListView$OnOverScrollListener;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView;->mOverScrollListener:Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    .line 539
    return-void
.end method

.method public smoothScrollToPosition(ILandroid/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$LayoutManager;

    .line 514
    invoke-virtual {v0, p2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setCustomSmoothScroller(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 515
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView;->smoothScrollToPosition(I)V

    .line 516
    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->clearCustomSmoothScroller()V

    .line 517
    return-void
.end method
