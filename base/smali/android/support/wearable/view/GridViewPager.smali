.class public Landroid/support/wearable/view/GridViewPager;
.super Landroid/view/ViewGroup;
.source "GridViewPager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final DEBUG_ADAPTER:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_LIFECYCLE:Z = false

.field private static final DEBUG_LISTENERS:Z = false

.field private static final DEBUG_POPULATE:Z = false

.field private static final DEBUG_ROUND:Z = false

.field private static final DEBUG_SCROLLING:Z = false

.field private static final DEBUG_SETTLING:Z = false

.field private static final DEBUG_TOUCH:Z = false

.field private static final DEBUG_TOUCHSLOP:Z = false

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MIN_ACCURATE_VELOCITY:I = 0xc8

.field private static final MIN_DISTANCE_FOR_FLING_DP:I = 0x28

.field private static final NO_POINTER:I = -0x1

.field private static final OVERSCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SCROLL_AXIS_X:I = 0x0

.field private static final SCROLL_AXIS_Y:I = 0x1

.field public static final SCROLL_STATE_CONTENT_SETTLING:I = 0x3

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final SLIDE_ANIMATION_DURATION_NORMAL_MS:I = 0x12c

.field private static final SLIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "GridViewPager"


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

.field private mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

.field private mAdapterChangeNotificationPending:Z

.field private mBackgroundController:Landroid/support/wearable/view/BackgroundController;

.field private mCalledSuper:Z

.field private final mCloseEnough:I

.field private mColMargin:I

.field private mConsumeInsets:Z

.field private final mCurItem:Landroid/graphics/Point;

.field private mDatasetChangePending:Z

.field private mDelayPopulate:Z

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedCurrentColumnCount:I

.field private mExpectedRowCount:I

.field private mFirstLayout:Z

.field private mGestureInitialScrollY:I

.field private mGestureInitialX:F

.field private mGestureInitialY:F

.field private mInLayout:Z

.field private mIsAbleToDrag:Z

.field private mIsBeingDragged:Z

.field private final mItems:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Landroid/graphics/Point;",
            "Landroid/support/wearable/view/GridViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinFlingDistance:I

.field private final mMinFlingVelocity:I

.field private final mMinUsableVelocity:I

.field private mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

.field private mOffscreenPageCount:I

.field private mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

.field private mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

.field private mPointerLastX:F

.field private mPointerLastY:F

.field private final mPopulatedPageBounds:Landroid/graphics/Rect;

.field private final mPopulatedPages:Landroid/graphics/Rect;

.field private final mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Landroid/graphics/Point;",
            "Landroid/support/wearable/view/GridViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:Landroid/graphics/Point;

.field private mRowMargin:I

.field private mRowScrollX:Landroid/util/SparseIntArray;

.field private mScrollAxis:I

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollingContent:Landroid/view/View;

.field private mSlideAnimationDurationMs:I

.field private final mTempPoint1:Landroid/graphics/Point;

.field private final mTouchSlop:I

.field private final mTouchSlopSquared:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowInsets:Landroid/view/WindowInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/wearable/view/GridViewPager;->LAYOUT_ATTRS:[I

    .line 66
    new-instance v0, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;

    invoke-direct {v0}, Landroid/support/wearable/view/GridViewPager$DragFrictionInterpolator;-><init>()V

    sput-object v0, Landroid/support/wearable/view/GridViewPager;->OVERSCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 67
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/wearable/view/GridViewPager;->SLIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/wearable/view/GridViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/GridViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 276
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    iput-boolean v4, p0, Landroid/support/wearable/view/GridViewPager;->mConsumeInsets:Z

    .line 73
    const/16 v0, 0x12c

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mSlideAnimationDurationMs:I

    .line 86
    new-instance v0, Landroid/support/wearable/view/GridViewPager$1;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/GridViewPager$1;-><init>(Landroid/support/wearable/view/GridViewPager;)V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 119
    iput v4, p0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 162
    iput-boolean v4, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    .line 277
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 279
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    .line 280
    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlopSquared:I

    .line 281
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mMinFlingVelocity:I

    .line 282
    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mMinFlingDistance:I

    .line 283
    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mMinUsableVelocity:I

    .line 284
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mCloseEnough:I

    .line 285
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    .line 286
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    .line 287
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    .line 288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPageBounds:Landroid/graphics/Rect;

    .line 290
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Landroid/support/wearable/view/GridViewPager;->SLIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    .line 291
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    .line 292
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/GridViewPager;->setOverScrollMode(I)V

    .line 293
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRowScrollX:Landroid/util/SparseIntArray;

    .line 294
    new-instance v0, Landroid/support/wearable/view/BackgroundController;

    invoke-direct {v0}, Landroid/support/wearable/view/BackgroundController;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    .line 295
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/BackgroundController;->attachTo(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/GridViewPager;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/wearable/view/GridViewPager;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    return-void
.end method

.method static synthetic access$400(Landroid/support/wearable/view/GridViewPager;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->dataSetChanged()V

    return-void
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/support/wearable/view/GridViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private adapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 515
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1, p2}, Landroid/support/wearable/view/BackgroundController;->onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 518
    :cond_1
    return-void
.end method

.method private addNewItem(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 3

    .prologue
    .line 898
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 899
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 900
    if-nez v0, :cond_0

    .line 901
    new-instance v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/wearable/view/GridViewPager$ItemInfo;-><init>()V

    .line 902
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v2, p0, p2, p1}, Landroid/support/wearable/view/GridPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;II)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 903
    iput p1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 904
    iput p2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 910
    :cond_0
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 911
    iput p1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 912
    iput p2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 916
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    return-object v0
.end method

.method private cancelDrag()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1043
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->cancelPendingInputEvents()V

    .line 1044
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1045
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1047
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1048
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/GridViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1049
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1050
    return-void
.end method

.method private completeScroll(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1612
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    .line 1613
    :goto_0
    if-eqz v0, :cond_1

    .line 1614
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1615
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v2

    .line 1616
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v3

    .line 1617
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1618
    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 1619
    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 1620
    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 1623
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    .line 1624
    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 1625
    if-eqz v0, :cond_2

    .line 1626
    if-eqz p1, :cond_4

    .line 1627
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1632
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 1612
    goto :goto_0

    .line 1629
    :cond_4
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private computePageLeft(I)I
    .locals 2

    .prologue
    .line 1400
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private computePageTop(I)I
    .locals 2

    .prologue
    .line 1404
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private dataSetChanged()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 936
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v6

    .line 937
    iput v6, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    .line 938
    new-instance v7, Landroid/graphics/Point;

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-direct {v7, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 940
    new-instance v8, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    .line 942
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v3, v5

    :goto_0
    if-ltz v4, :cond_5

    .line 943
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v4}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 944
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v4}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 945
    iget-object v9, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v10, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Landroid/support/wearable/view/GridPagerAdapter;->getItemPosition(Ljava/lang/Object;)Landroid/graphics/Point;

    move-result-object v9

    .line 946
    iget-object v10, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v11, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, v11, v9}, Landroid/support/wearable/view/GridPagerAdapter;->applyItemPosition(Ljava/lang/Object;Landroid/graphics/Point;)V

    .line 948
    sget-object v10, Landroid/support/wearable/view/GridPagerAdapter;->POSITION_UNCHANGED:Landroid/graphics/Point;

    if-ne v9, v10, :cond_1

    .line 952
    invoke-virtual {v8, v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 956
    :cond_1
    sget-object v0, Landroid/support/wearable/view/GridPagerAdapter;->POSITION_NONE:Landroid/graphics/Point;

    if-ne v9, v0, :cond_3

    .line 961
    if-nez v3, :cond_9

    .line 962
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v2

    .line 966
    :goto_2
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v9, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    iget v10, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget-object v11, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v9, v10, v11}, Landroid/support/wearable/view/GridPagerAdapter;->destroyItem(Landroid/view/ViewGroup;IILjava/lang/Object;)V

    .line 969
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v9, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget v1, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-virtual {v3, v9, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 970
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v6, -0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v5, v3}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result v1

    iput v1, v7, Landroid/graphics/Point;->y:I

    .line 971
    iget v1, v7, Landroid/graphics/Point;->y:I

    if-ge v1, v6, :cond_2

    .line 972
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v9}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v5, v3}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result v1

    iput v1, v7, Landroid/graphics/Point;->x:I

    move v3, v0

    goto :goto_1

    .line 975
    :cond_2
    iput v5, v7, Landroid/graphics/Point;->x:I

    move v3, v0

    goto :goto_1

    .line 982
    :cond_3
    iget v0, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget v10, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-virtual {v9, v0, v10}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v10, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget v11, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 994
    iget v0, v9, Landroid/graphics/Point;->x:I

    iget v10, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v0, v10}, Landroid/graphics/Point;->set(II)V

    .line 996
    :cond_4
    iget v0, v9, Landroid/graphics/Point;->x:I

    iput v0, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 997
    iget v0, v9, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 998
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1003
    :cond_5
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 1004
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v8}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 1006
    if-eqz v3, :cond_6

    .line 1007
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1010
    :cond_6
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    if-lez v0, :cond_7

    .line 1011
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v1, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    .line 1019
    :goto_3
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->dispatchOnDataSetChanged()V

    .line 1020
    iget v0, v7, Landroid/graphics/Point;->y:I

    iget v1, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v0, v1, v5, v2}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZ)V

    .line 1021
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->requestLayout()V

    .line 1022
    return-void

    .line 1013
    :cond_7
    iput v5, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    goto :goto_3

    :cond_8
    move v3, v0

    goto/16 :goto_1

    :cond_9
    move v0, v3

    goto/16 :goto_2
.end method

.method private static debugIndent(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 2415
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2416
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    .line 2417
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2419
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private determineTargetPage(IIFIIII)I
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 2246
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mMinUsableVelocity:I

    if-ge v0, v1, :cond_0

    .line 2247
    int-to-float v0, p6

    int-to-float v1, p7

    invoke-static {v0, v1}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    float-to-int p6, v0

    .line 2252
    :cond_0
    sub-float v0, v2, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float v0, v2, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 2254
    invoke-static {p7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mMinFlingDistance:I

    if-le v1, v2, :cond_2

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mMinFlingVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 2256
    if-lez p6, :cond_1

    .line 2267
    :goto_0
    invoke-static {p2, p4, p5}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result v0

    .line 2271
    return v0

    .line 2256
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2261
    :cond_2
    int-to-float v0, p2

    add-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_0
.end method

.method private dispatchOnDataSetChanged()V
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    invoke-interface {v0}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onDataSetChanged()V

    .line 1028
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0}, Landroid/support/wearable/view/BackgroundController;->onDataSetChanged()V

    .line 1031
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1904
    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    .line 1905
    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsAbleToDrag:Z

    .line 1907
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1909
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1911
    :cond_0
    return-void
.end method

.method private executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1948
    const/4 v0, 0x0

    .line 1949
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1971
    :goto_0
    :sswitch_0
    return v0

    .line 1951
    :sswitch_1
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->pageLeft()Z

    move-result v0

    goto :goto_0

    .line 1954
    :sswitch_2
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->pageRight()Z

    move-result v0

    goto :goto_0

    .line 1957
    :sswitch_3
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->pageUp()Z

    move-result v0

    goto :goto_0

    .line 1960
    :sswitch_4
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->pageDown()Z

    move-result v0

    goto :goto_0

    .line 1966
    :sswitch_5
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->debug()V

    .line 1967
    const/4 v0, 0x1

    goto :goto_0

    .line 1949
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_0
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method private getChildForInfo(Landroid/support/wearable/view/GridViewPager$ItemInfo;)Landroid/view/View;
    .locals 5

    .prologue
    .line 1856
    iget-object v0, p1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1857
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v2

    .line 1859
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1860
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1861
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v4, p1, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Landroid/support/wearable/view/GridPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1866
    :goto_1
    return-object v0

    .line 1859
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1866
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getContentHeight()I
    .locals 3

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getContentWidth()I
    .locals 3

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRowScrollX(I)I
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRowScrollX:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getScrollableDistance(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 1828
    const/4 v0, 0x0

    .line 1829
    instance-of v1, p1, Landroid/support/wearable/view/CardScrollView;

    if-eqz v1, :cond_1

    .line 1830
    check-cast p1, Landroid/support/wearable/view/CardScrollView;

    invoke-virtual {p1, p2}, Landroid/support/wearable/view/CardScrollView;->getAvailableScrollDelta(I)I

    move-result v0

    .line 1834
    :cond_0
    :goto_0
    return v0

    .line 1831
    :cond_1
    instance-of v1, p1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 1832
    check-cast p1, Landroid/widget/ScrollView;

    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/GridViewPager;->getScrollableDistance(Landroid/widget/ScrollView;I)I

    move-result v0

    goto :goto_0
.end method

.method private getScrollableDistance(Landroid/widget/ScrollView;I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1838
    .line 1839
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1840
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1841
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1842
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1843
    sub-int v3, v1, v2

    .line 1844
    if-le v1, v2, :cond_0

    .line 1845
    if-lez p2, :cond_1

    .line 1846
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sub-int v1, v3, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1852
    :cond_0
    :goto_0
    return v0

    .line 1847
    :cond_1
    if-gez p2, :cond_0

    .line 1848
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method private getXIndex(F)F
    .locals 2

    .prologue
    .line 2215
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    add-int/2addr v0, v1

    .line 2216
    if-nez v0, :cond_0

    .line 2217
    const-string v0, "GridViewPager"

    const-string v1, "getXIndex() called with zero width."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    const/4 v0, 0x0

    .line 2220
    :goto_0
    return v0

    :cond_0
    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_0
.end method

.method private getYIndex(F)F
    .locals 2

    .prologue
    .line 2224
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    add-int/2addr v0, v1

    .line 2225
    if-nez v0, :cond_0

    .line 2226
    const-string v0, "GridViewPager"

    const-string v1, "getYIndex() called with zero height."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    const/4 v0, 0x0

    .line 2229
    :goto_0
    return v0

    :cond_0
    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_0
.end method

.method private handlePointerDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2009
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 2052
    :goto_0
    return v2

    .line 2014
    :cond_0
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 2017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialX:F

    .line 2018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialY:F

    .line 2019
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialScrollY:I

    .line 2021
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialX:F

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 2022
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialY:F

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 2023
    iput-boolean v3, p0, Landroid/support/wearable/view/GridViewPager;->mIsAbleToDrag:Z

    .line 2025
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2026
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2028
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2029
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mCloseEnough:I

    if-gt v0, v1, :cond_3

    :cond_2
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_4

    .line 2036
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2037
    iput-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 2038
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    .line 2039
    iput-boolean v3, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    .line 2040
    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2041
    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    goto/16 :goto_0

    .line 2043
    :cond_4
    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 2044
    iput-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    goto/16 :goto_0
.end method

.method private handlePointerMove(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    .line 2056
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 2057
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2058
    const/4 v0, 0x0

    .line 2137
    :goto_0
    return v0

    .line 2061
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2062
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2063
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 2065
    :cond_1
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 2066
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 2068
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    sub-float v4, v1, v0

    .line 2069
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2070
    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    sub-float v5, v2, v3

    .line 2071
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 2079
    iget-boolean v6, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    if-nez v6, :cond_2

    .line 2080
    mul-float v6, v0, v0

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlopSquared:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 2084
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    .line 2085
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/support/wearable/view/GridViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2086
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    .line 2087
    cmpl-float v6, v3, v0

    if-ltz v6, :cond_4

    .line 2088
    const/4 v6, 0x1

    iput v6, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    .line 2100
    :goto_1
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    .line 2102
    mul-float v6, v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 2103
    float-to-double v8, v0

    div-double v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    .line 2105
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    int-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-float v3, v8

    .line 2106
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    int-to-double v8, v0

    mul-double/2addr v6, v8

    double-to-float v0, v6

    .line 2122
    :goto_2
    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    add-float/2addr v0, v4

    :goto_3
    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 2123
    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    add-float/2addr v0, v3

    :goto_4
    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 2128
    :cond_2
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 2129
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    if-nez v0, :cond_9

    move v0, v1

    .line 2130
    :goto_5
    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    move v1, v2

    .line 2131
    :goto_6
    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->performDrag(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2132
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2136
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2137
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    goto/16 :goto_0

    .line 2093
    :cond_4
    const/4 v6, 0x0

    iput v6, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    goto :goto_1

    .line 2114
    :cond_5
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-nez v0, :cond_6

    .line 2115
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    int-to-float v0, v0

    .line 2116
    const/4 v3, 0x0

    goto :goto_2

    .line 2118
    :cond_6
    const/4 v0, 0x0

    .line 2119
    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mTouchSlop:I

    int-to-float v3, v3

    goto :goto_2

    .line 2122
    :cond_7
    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    sub-float v0, v4, v0

    goto :goto_3

    .line 2123
    :cond_8
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    sub-float/2addr v0, v3

    goto :goto_4

    .line 2129
    :cond_9
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    goto :goto_5

    .line 2130
    :cond_a
    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    goto :goto_6
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 2141
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    if-nez v0, :cond_1

    .line 2142
    :cond_0
    iput v12, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 2143
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->endDrag()V

    .line 2211
    :goto_0
    return v8

    .line 2147
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2148
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2149
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2151
    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2153
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v10, v2, Landroid/graphics/Point;->x:I

    .line 2154
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v9, v2, Landroid/graphics/Point;->y:I

    .line 2157
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->infoForCurrentScrollPosition()Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v3

    .line 2159
    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    packed-switch v2, :pswitch_data_0

    move v5, v8

    move v1, v9

    move v0, v10

    .line 2200
    :goto_1
    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 2201
    iput-boolean v11, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 2202
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_5

    .line 2205
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/view/GridPagerAdapter;->getCurrentColumnForRow(II)I

    move-result v2

    :goto_2
    move-object v0, p0

    move v3, v11

    move v4, v11

    .line 2207
    invoke-virtual/range {v0 .. v5}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZI)V

    .line 2209
    :cond_2
    iput v12, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 2210
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->endDrag()V

    goto :goto_0

    .line 2161
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 2162
    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialX:F

    sub-float/2addr v1, v2

    float-to-int v7, v1

    .line 2163
    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v6, v0

    .line 2164
    iget v2, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 2165
    iget v0, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v0

    iget v1, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    invoke-direct {p0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2166
    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getXIndex(F)F

    move-result v3

    .line 2167
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/support/wearable/view/GridViewPager;->determineTargetPage(IIFIIII)I

    move-result v0

    move v5, v6

    move v1, v9

    .line 2169
    goto :goto_1

    .line 2172
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 2173
    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mGestureInitialScrollY:I

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v2

    sub-int v7, v1, v2

    .line 2174
    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v6, v0

    .line 2175
    iget v2, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 2176
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v0

    iget v1, v3, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2177
    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getYIndex(F)F

    move-result v3

    .line 2179
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-nez v0, :cond_4

    .line 2180
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->infoForCurrentScrollPosition()Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getChildForInfo(Landroid/support/wearable/view/GridViewPager$ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 2181
    neg-int v1, v6

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->getScrollableDistance(Landroid/view/View;I)I

    move-result v1

    .line 2182
    if-eqz v1, :cond_3

    .line 2183
    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    .line 2184
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mMinFlingVelocity:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 2185
    neg-int v0, v6

    invoke-virtual {p0, v8, v1, v8, v0}, Landroid/support/wearable/view/GridViewPager;->flingContent(IIII)V

    .line 2186
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->endDrag()V

    :cond_3
    move v5, v6

    move v1, v9

    move v0, v10

    .line 2189
    goto/16 :goto_1

    .line 2193
    :cond_4
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/support/wearable/view/GridViewPager;->determineTargetPage(IIFIIII)I

    move-result v1

    move v5, v6

    move v0, v10

    goto/16 :goto_1

    :cond_5
    move v2, v0

    goto/16 :goto_2

    .line 2159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static inRange(III)Z
    .locals 1

    .prologue
    .line 2423
    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 4

    .prologue
    .line 1315
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1316
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1317
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v3, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/wearable/view/GridPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1321
    :goto_1
    return-object v0

    .line 1315
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1321
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private infoForCurrentScrollPosition()Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 2

    .prologue
    .line 1870
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getYIndex(F)F

    move-result v0

    float-to-int v0, v0

    .line 1871
    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->infoForScrollPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method private infoForPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 2

    .prologue
    .line 1329
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 1330
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    return-object v0
.end method

.method private infoForPosition(Landroid/graphics/Point;)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    return-object v0
.end method

.method private infoForScrollPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;
    .locals 3

    .prologue
    .line 1875
    int-to-float v0, p2

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getYIndex(F)F

    move-result v0

    float-to-int v1, v0

    .line 1876
    int-to-float v0, p1

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getXIndex(F)F

    move-result v0

    float-to-int v2, v0

    .line 1877
    invoke-direct {p0, v2, v1}, Landroid/support/wearable/view/GridViewPager;->infoForPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    .line 1879
    if-nez v0, :cond_0

    .line 1880
    new-instance v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/wearable/view/GridViewPager$ItemInfo;-><init>()V

    .line 1881
    iput v2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    .line 1882
    iput v1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    .line 1884
    :cond_0
    return-object v0
.end method

.method private static limit(FFF)F
    .locals 1

    .prologue
    .line 2285
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 2290
    :goto_0
    return p1

    .line 2287
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 2288
    goto :goto_0

    :cond_1
    move p1, p0

    .line 2290
    goto :goto_0
.end method

.method private static limit(FI)F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1719
    if-lez p1, :cond_0

    .line 1720
    int-to-float v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1722
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private static limit(III)I
    .locals 0

    .prologue
    .line 2275
    if-ge p0, p1, :cond_0

    .line 2280
    :goto_0
    return p1

    .line 2277
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 2278
    goto :goto_0

    :cond_1
    move p1, p0

    .line 2280
    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 1888
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1889
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1890
    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 1893
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1894
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 1895
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 1896
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 1897
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1898
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1901
    :cond_0
    return-void

    .line 1893
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageDown()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2001
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v2}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2002
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItem(IIZ)V

    .line 2005
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageLeft()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1977
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    .line 1978
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItem(IIZ)V

    .line 1981
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageRight()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1985
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1986
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItem(IIZ)V

    .line 1989
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(II)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1545
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    .line 1547
    invoke-virtual/range {v0 .. v6}, Landroid/support/wearable/view/GridViewPager;->onPageScrolled(IIFFII)V

    .line 1548
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    if-nez v0, :cond_2

    .line 1549
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_0
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->infoForCurrentScrollPosition()Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    .line 1555
    iget v2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v2

    .line 1556
    iget v3, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v3

    .line 1558
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, p1

    sub-int v5, v4, v2

    .line 1559
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, p2

    sub-int v6, v2, v3

    .line 1560
    int-to-float v2, v5

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->getXIndex(F)F

    move-result v3

    .line 1561
    int-to-float v2, v6

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->getYIndex(F)F

    move-result v4

    .line 1563
    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    .line 1564
    iget v1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget v2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/wearable/view/GridViewPager;->onPageScrolled(IIFFII)V

    .line 1566
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    if-nez v0, :cond_1

    .line 1567
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private pageUp()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1993
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_0

    .line 1994
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItem(IIZ)V

    .line 1997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDrag(FF)Z
    .locals 13

    .prologue
    .line 1733
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    sub-float v1, v0, p1

    .line 1734
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    sub-float v3, v0, p2

    .line 1735
    iput p1, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 1736
    iput p2, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 1738
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    .line 1739
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v4

    sub-int v5, v2, v4

    .line 1740
    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v4

    sub-int v6, v2, v4

    .line 1741
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v4

    sub-int v7, v2, v4

    .line 1742
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v2

    sub-int v8, v0, v2

    .line 1744
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v0

    int-to-float v9, v0

    .line 1745
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    .line 1747
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_10

    .line 1749
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v0

    iget v4, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    add-int/2addr v0, v4

    .line 1750
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_6

    .line 1751
    int-to-float v0, v0

    rem-float v0, v2, v0

    neg-float v0, v0

    .line 1759
    :goto_0
    const/4 v4, 0x0

    .line 1760
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_f

    .line 1761
    sub-float/2addr v3, v0

    .line 1762
    add-float/2addr v2, v0

    .line 1763
    const/4 v0, 0x1

    move v12, v0

    move v0, v2

    move v2, v3

    move v3, v12

    .line 1767
    :goto_1
    if-eqz v3, :cond_0

    .line 1771
    float-to-int v3, v9

    float-to-int v4, v0

    invoke-direct {p0, v3, v4}, Landroid/support/wearable/view/GridViewPager;->infoForScrollPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->getChildForInfo(Landroid/support/wearable/view/GridViewPager$ItemInfo;)Landroid/view/View;

    move-result-object v3

    .line 1772
    if-eqz v3, :cond_0

    .line 1773
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    .line 1774
    invoke-direct {p0, v3, v4}, Landroid/support/wearable/view/GridViewPager;->getScrollableDistance(Landroid/view/View;I)I

    move-result v4

    .line 1775
    invoke-static {v2, v4}, Landroid/support/wearable/view/GridViewPager;->limit(FI)F

    move-result v4

    .line 1776
    const/4 v10, 0x0

    float-to-int v11, v4

    invoke-virtual {v3, v10, v11}, Landroid/view/View;->scrollBy(II)V

    .line 1780
    sub-float/2addr v2, v4

    .line 1781
    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    float-to-int v10, v4

    int-to-float v10, v10

    sub-float/2addr v4, v10

    add-float/2addr v3, v4

    iput v3, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    :cond_0
    move v4, v0

    .line 1787
    :goto_2
    float-to-int v0, v1

    int-to-float v0, v0

    add-float/2addr v0, v9

    float-to-int v0, v0

    .line 1788
    float-to-int v3, v2

    int-to-float v3, v3

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 1789
    if-lt v0, v5, :cond_1

    if-gt v0, v6, :cond_1

    if-lt v3, v7, :cond_1

    if-le v3, v8, :cond_7

    :cond_1
    const/4 v0, 0x1

    .line 1791
    :goto_3
    if-eqz v0, :cond_e

    .line 1792
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getOverScrollMode()I

    move-result v3

    .line 1793
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    if-nez v0, :cond_2

    if-lt v5, v6, :cond_3

    :cond_2
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    const/4 v10, 0x1

    if-ne v0, v10, :cond_8

    if-ge v7, v8, :cond_8

    :cond_3
    const/4 v0, 0x1

    .line 1795
    :goto_4
    if-eqz v3, :cond_4

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    if-ne v3, v0, :cond_d

    .line 1797
    :cond_4
    int-to-float v0, v6

    cmpl-float v0, v9, v0

    if-lez v0, :cond_9

    int-to-float v0, v6

    sub-float v0, v9, v0

    move v3, v0

    .line 1799
    :goto_5
    int-to-float v0, v8

    cmpl-float v0, v4, v0

    if-lez v0, :cond_b

    int-to-float v0, v8

    sub-float v0, v4, v0

    .line 1802
    :goto_6
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_5

    .line 1803
    sget-object v5, Landroid/support/wearable/view/GridViewPager;->OVERSCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    sub-float v3, v6, v3

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v1, v3

    .line 1806
    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_e

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-nez v3, :cond_e

    .line 1807
    sget-object v3, Landroid/support/wearable/view/GridViewPager;->OVERSCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    sub-float v0, v5, v0

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 1815
    :goto_7
    add-float/2addr v1, v9

    .line 1816
    add-float/2addr v0, v4

    .line 1819
    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    float-to-int v3, v1

    int-to-float v3, v3

    sub-float v3, v1, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastX:F

    .line 1820
    iget v2, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v0, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mPointerLastY:F

    .line 1822
    float-to-int v2, v1

    float-to-int v3, v0

    invoke-virtual {p0, v2, v3}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 1823
    float-to-int v1, v1

    float-to-int v0, v0

    invoke-direct {p0, v1, v0}, Landroid/support/wearable/view/GridViewPager;->pageScrolled(II)Z

    .line 1824
    const/4 v0, 0x1

    return v0

    .line 1753
    :cond_6
    int-to-float v4, v0

    int-to-float v10, v0

    rem-float v10, v2, v10

    sub-float/2addr v4, v10

    int-to-float v0, v0

    rem-float v0, v4, v0

    goto/16 :goto_0

    .line 1789
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1793
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1797
    :cond_9
    int-to-float v0, v5

    cmpg-float v0, v9, v0

    if-gez v0, :cond_a

    int-to-float v0, v5

    sub-float v0, v9, v0

    move v3, v0

    goto/16 :goto_5

    :cond_a
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_5

    .line 1799
    :cond_b
    int-to-float v0, v7

    cmpg-float v0, v4, v0

    if-gez v0, :cond_c

    int-to-float v0, v7

    sub-float v0, v4, v0

    goto/16 :goto_6

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1811
    :cond_d
    int-to-float v0, v5

    sub-float/2addr v0, v9

    int-to-float v3, v6

    sub-float/2addr v3, v9

    invoke-static {v1, v0, v3}, Landroid/support/wearable/view/GridViewPager;->limit(FFF)F

    move-result v1

    .line 1812
    int-to-float v0, v7

    sub-float/2addr v0, v4

    int-to-float v3, v8

    sub-float/2addr v3, v4

    invoke-static {v2, v0, v3}, Landroid/support/wearable/view/GridViewPager;->limit(FFF)F

    move-result v0

    goto :goto_7

    :cond_e
    move v0, v2

    goto :goto_7

    :cond_f
    move v0, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_1

    :cond_10
    move v4, v2

    move v2, v3

    goto/16 :goto_2
.end method

.method private pointInRange(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2431
    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v0, v1}, Landroid/support/wearable/view/GridViewPager;->inRange(III)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v1, p2}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/support/wearable/view/GridViewPager;->inRange(III)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private pointInRange(Landroid/graphics/Point;)Z
    .locals 2

    .prologue
    .line 2427
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->pointInRange(II)Z

    move-result v0

    return v0
.end method

.method private populate()V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->populate(II)V

    .line 1040
    :cond_0
    return-void
.end method

.method private populate(II)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1063
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1064
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq v1, p2, :cond_1

    .line 1065
    :cond_0
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1066
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 1076
    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    if-eqz v0, :cond_3

    .line 1206
    :cond_2
    :goto_0
    return-void

    .line 1085
    :cond_3
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1089
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1090
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1091
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    .line 1092
    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    if-eq v1, v0, :cond_4

    .line 1093
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter row count changed without a call to notifyDataSetChanged()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_4
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v1, p2}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v1

    .line 1097
    if-gtz v1, :cond_5

    .line 1098
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All rows must have at least 1 column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_5
    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    .line 1102
    iput v1, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    .line 1104
    const/4 v2, 0x1

    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1105
    sub-int v3, p2, v2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1106
    add-int/lit8 v0, v0, -0x1

    add-int v4, p2, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1109
    sub-int v0, p1, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1110
    add-int/lit8 v0, v1, -0x1

    add-int v1, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1118
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_9

    .line 1119
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1120
    iget v1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    if-ne v1, p2, :cond_7

    .line 1121
    iget v1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    if-lt v1, v5, :cond_8

    iget v1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    if-gt v1, v6, :cond_8

    .line 1118
    :cond_6
    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1127
    :cond_7
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v7, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    iget-object v8, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v7, v8}, Landroid/support/wearable/view/GridPagerAdapter;->getCurrentColumnForRow(II)I

    move-result v1

    .line 1128
    iget v7, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    if-ne v7, v1, :cond_8

    iget v1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    if-lt v1, v3, :cond_8

    iget v1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    if-le v1, v4, :cond_6

    .line 1134
    :cond_8
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1138
    iget-object v7, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v7, v2}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1140
    iget v7, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget v8, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 1147
    iget-object v7, p0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v7, v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1151
    :cond_9
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 1152
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->x:I

    :goto_3
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gt v0, v6, :cond_b

    .line 1156
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1157
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->addNewItem(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1152
    :cond_a
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_3

    .line 1161
    :cond_b
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iput v3, v0, Landroid/graphics/Point;->y:I

    :goto_4
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gt v0, v4, :cond_e

    .line 1162
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, p1}, Landroid/support/wearable/view/GridPagerAdapter;->getCurrentColumnForRow(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1166
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1167
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->addNewItem(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1169
    :cond_c
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_d

    .line 1170
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->setRowScrollX(II)V

    .line 1161
    :cond_d
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mTempPoint1:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_4

    .line 1174
    :cond_e
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-ltz v1, :cond_f

    .line 1175
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1179
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v7, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    iget v8, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v7, v8, v0}, Landroid/support/wearable/view/GridPagerAdapter;->destroyItem(Landroid/view/ViewGroup;IILjava/lang/Object;)V

    .line 1174
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5

    .line 1181
    :cond_f
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRecycledItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 1182
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1186
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPages:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v3, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1187
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mPopulatedPageBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, v6, 0x1

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1197
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    if-eqz v0, :cond_10

    .line 1198
    iput-boolean v9, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    .line 1199
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->adapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 1200
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 1202
    :cond_10
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mDatasetChangePending:Z

    if-eqz v0, :cond_2

    .line 1203
    iput-boolean v9, p0, Landroid/support/wearable/view/GridViewPager;->mDatasetChangePending:Z

    .line 1204
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->dispatchOnDataSetChanged()V

    goto/16 :goto_0
.end method

.method private recomputeScrollPosition(IIIIIIII)V
    .locals 6

    .prologue
    .line 1409
    if-lez p2, :cond_1

    if-lez p4, :cond_1

    .line 1410
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p5

    .line 1411
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p6

    .line 1414
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p7

    .line 1415
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v3

    sub-int v3, p4, v3

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, p8

    .line 1418
    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v4

    .line 1419
    int-to-float v4, v4

    int-to-float v1, v1

    div-float v1, v4, v1

    .line 1420
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1422
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v0

    .line 1423
    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1424
    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 1426
    invoke-virtual {p0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 1428
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->infoForPosition(Landroid/graphics/Point;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    .line 1432
    iget v3, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1433
    iget v0, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v4

    sub-int v4, v0, v4

    .line 1434
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v5, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->timePassed()I

    move-result v5

    sub-int v5, v0, v5

    .line 1435
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->infoForPosition(Landroid/graphics/Point;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    .line 1440
    if-eqz v0, :cond_0

    .line 1441
    iget v1, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    invoke-direct {p0, v1}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1442
    iget v2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1443
    iget v0, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 1444
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 1445
    invoke-virtual {p0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 1711
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1712
    if-eqz v0, :cond_0

    .line 1713
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1715
    :cond_0
    return-void
.end method

.method private scrollCurrentRowTo(I)V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, p1}, Landroid/support/wearable/view/GridViewPager;->scrollRowTo(II)V

    .line 585
    return-void
.end method

.method private scrollRowTo(II)V
    .locals 5

    .prologue
    .line 565
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 581
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v1

    .line 569
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v0

    sub-int v2, p2, v0

    .line 570
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 571
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 572
    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v4

    .line 573
    if-eqz v4, :cond_1

    iget v4, v4, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    if-ne v4, p1, :cond_1

    .line 574
    neg-int v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 577
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->postInvalidateOnAnimation()V

    .line 570
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 580
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/GridViewPager;->setRowScrollX(II)V

    goto :goto_0
.end method

.method private static scrollStateToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1531
    packed-switch p0, :pswitch_data_0

    .line 1541
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1533
    :pswitch_0
    const-string v0, "DRAGGING"

    goto :goto_0

    .line 1535
    :pswitch_1
    const-string v0, "IDLE"

    goto :goto_0

    .line 1537
    :pswitch_2
    const-string v0, "SETTLING"

    goto :goto_0

    .line 1539
    :pswitch_3
    const-string v0, "CONTENT_SETTLING"

    goto :goto_0

    .line 1531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private scrollToItem(IIZIZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 697
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/GridViewPager;->infoForPosition(II)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_3

    .line 704
    iget v2, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 705
    iget v0, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    .line 707
    :goto_0
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v3, p2, p1}, Landroid/support/wearable/view/GridPagerAdapter;->setCurrentColumnForRow(II)V

    .line 708
    if-eqz p5, :cond_1

    .line 712
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v3, :cond_0

    .line 713
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v3, p2, p1}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageSelected(II)V

    .line 715
    :cond_0
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v3, :cond_1

    .line 716
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v3, p2, p1}, Landroid/support/wearable/view/BackgroundController;->onPageSelected(II)V

    .line 719
    :cond_1
    if-eqz p3, :cond_2

    .line 720
    invoke-virtual {p0, v2, v0, p4}, Landroid/support/wearable/view/GridViewPager;->smoothScrollTo(III)V

    .line 726
    :goto_1
    return-void

    .line 722
    :cond_2
    invoke-direct {p0, v1}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 723
    invoke-virtual {p0, v2, v0}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 724
    invoke-direct {p0, v2, v0}, Landroid/support/wearable/view/GridViewPager;->pageScrolled(II)Z

    goto :goto_1

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method private setRowScrollX(II)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRowScrollX:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 561
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iput p1, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    .line 544
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 547
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/BackgroundController;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .prologue
    .line 1276
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1281
    invoke-virtual {p0, p3}, Landroid/support/wearable/view/GridViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1282
    invoke-virtual {p0, p3}, Landroid/support/wearable/view/GridViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1284
    check-cast v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    .line 1286
    iget-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mInLayout:Z

    if-eqz v2, :cond_1

    .line 1287
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;->needsMeasure:Z

    .line 1288
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/wearable/view/GridViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1292
    :goto_1
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mWindowInsets:Landroid/view/WindowInsets;

    invoke-virtual {p1, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1298
    :cond_0
    return-void

    .line 1290
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method public canScrollHorizontally(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1915
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1923
    :cond_1
    :goto_0
    return v0

    .line 1918
    :cond_2
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v2

    .line 1919
    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    add-int/lit8 v3, v3, -0x1

    .line 1920
    if-lez p1, :cond_3

    .line 1921
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v3

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 1923
    :cond_3
    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1929
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1937
    :cond_1
    :goto_0
    return v0

    .line 1932
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v2

    .line 1933
    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    add-int/lit8 v3, v3, -0x1

    .line 1934
    if-lez p1, :cond_3

    .line 1935
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v3}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v3

    if-lt v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 1937
    :cond_3
    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2338
    instance-of v0, p1, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1498
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1499
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1500
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1501
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1522
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1528
    :goto_1
    return-void

    .line 1503
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 1504
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1505
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    .line 1508
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v0

    .line 1509
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v1

    .line 1510
    iget-object v2, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1511
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1513
    if-ne v0, v2, :cond_3

    if-eq v1, v3, :cond_0

    .line 1514
    :cond_3
    invoke-virtual {p0, v2, v3}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 1515
    invoke-direct {p0, v2, v3}, Landroid/support/wearable/view/GridViewPager;->pageScrolled(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1517
    invoke-virtual {p0, v4, v4}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1527
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    goto :goto_1
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 2374
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/GridViewPager;->debug(I)V

    .line 2375
    return-void
.end method

.method protected debug(I)V
    .locals 4

    .prologue
    .line 2382
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->debug(I)V

    .line 2384
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 2385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCurItem={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2386
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 2388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAdapter={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2389
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 2391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mRowCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2392
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCurrentColumnCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2395
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    .line 2397
    if-eqz v1, :cond_0

    .line 2398
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 2399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mItems={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2400
    const-string v2, "View"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2403
    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v2

    .line 2404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2405
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2407
    :cond_1
    if-eqz v1, :cond_2

    .line 2408
    invoke-static {p1}, Landroid/support/wearable/view/GridViewPager;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 2409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2410
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_2
    return-void
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/GridViewPager;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 347
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-interface {v1, p0, v0}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 350
    :cond_0
    iget-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mConsumeInsets:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1944
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method flingContent(IIII)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 862
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 895
    :goto_0
    return-void

    .line 865
    :cond_0
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 866
    invoke-direct {p0, v1}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 867
    invoke-direct {p0, v1}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    goto :goto_0

    .line 870
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 871
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollingContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    .line 872
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    .line 879
    if-lez p3, :cond_2

    .line 881
    add-int v6, v1, p1

    move v5, v1

    .line 886
    :goto_1
    if-lez p4, :cond_3

    .line 888
    add-int v8, v2, p2

    move v7, v2

    .line 893
    :goto_2
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 894
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 883
    :cond_2
    add-int v5, v1, p1

    move v6, v1

    .line 884
    goto :goto_1

    .line 890
    :cond_3
    add-int v7, v2, p2

    move v8, v2

    .line 891
    goto :goto_2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2328
    new-instance v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/wearable/view/GridViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2343
    new-instance v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/wearable/view/GridViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2333
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/wearable/view/GridPagerAdapter;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 629
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getOffscreenPageCount()I
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    return v0
.end method

.method public getPageColumnMargin()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    return v0
.end method

.method public getPageRowMargin()I
    .locals 1

    .prologue
    .line 800
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    return v0
.end method

.method public measureChild(Landroid/view/View;Landroid/support/wearable/view/GridViewPager$LayoutParams;)V
    .locals 7

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v6, -0x2

    .line 1368
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentWidth()I

    move-result v3

    .line 1369
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->getContentHeight()I

    move-result v4

    .line 1372
    iget v0, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->width:I

    if-ne v0, v6, :cond_0

    move v0, v1

    .line 1374
    :goto_0
    iget v5, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->height:I

    if-ne v5, v6, :cond_1

    .line 1377
    :goto_1
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1378
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1379
    iget v2, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->width:I

    invoke-static {v0, v2, v3}, Landroid/support/wearable/view/GridViewPager;->getChildMeasureSpec(III)I

    move-result v0

    .line 1381
    iget v2, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/support/wearable/view/GridViewPager$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/support/wearable/view/GridViewPager;->getChildMeasureSpec(III)I

    move-result v1

    .line 1384
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1385
    return-void

    :cond_0
    move v0, v2

    .line 1372
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1374
    goto :goto_1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v1

    .line 319
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 320
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 324
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mWindowInsets:Landroid/view/WindowInsets;

    .line 327
    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 300
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 303
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestFitSystemWindows()V

    .line 310
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/GridViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 371
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 372
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1639
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    if-ne v2, v0, :cond_3

    .line 1643
    :cond_0
    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    .line 1644
    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mIsAbleToDrag:Z

    .line 1645
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mActivePointerId:I

    .line 1646
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1647
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1648
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move v0, v1

    .line 1681
    :cond_2
    :goto_0
    return v0

    .line 1655
    :cond_3
    if-eqz v2, :cond_4

    .line 1656
    iget-boolean v3, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    if-nez v3, :cond_2

    .line 1662
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsAbleToDrag:Z

    if-nez v0, :cond_4

    move v0, v1

    .line 1666
    goto :goto_0

    .line 1670
    :cond_4
    sparse-switch v2, :sswitch_data_0

    .line 1681
    :goto_1
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1672
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerDown(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1675
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerMove(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1678
    :sswitch_2
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1670
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1457
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v2

    move v1, v3

    .line 1458
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1459
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1460
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    .line 1461
    if-nez v0, :cond_0

    .line 1462
    const-string v0, "GridViewPager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got null layout params for child: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1465
    :cond_0
    invoke-direct {p0, v4}, Landroid/support/wearable/view/GridViewPager;->infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    move-result-object v5

    .line 1466
    if-nez v5, :cond_1

    .line 1467
    const-string v0, "GridViewPager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown child view, not claimed by adapter: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1470
    :cond_1
    iget-boolean v6, v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v6, :cond_2

    .line 1473
    iput-boolean v3, v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;->needsMeasure:Z

    .line 1474
    invoke-virtual {p0, v4, v0}, Landroid/support/wearable/view/GridViewPager;->measureChild(Landroid/view/View;Landroid/support/wearable/view/GridViewPager$LayoutParams;)V

    .line 1476
    :cond_2
    iget v6, v5, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    invoke-direct {p0, v6}, Landroid/support/wearable/view/GridViewPager;->computePageLeft(I)I

    move-result v6

    .line 1477
    iget v7, v5, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v7}, Landroid/support/wearable/view/GridViewPager;->computePageTop(I)I

    move-result v7

    .line 1479
    iget v5, v5, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    invoke-direct {p0, v5}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v5

    sub-int v5, v6, v5

    .line 1481
    iget v6, v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    .line 1482
    iget v0, v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;->topMargin:I

    add-int/2addr v0, v7

    .line 1488
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1490
    :cond_3
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1491
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/support/wearable/view/GridViewPager;->scrollToItem(IIZIZ)V

    .line 1493
    :cond_4
    iput-boolean v3, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 1494
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1338
    invoke-static {v0, p1}, Landroid/support/wearable/view/GridViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/support/wearable/view/GridViewPager;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->setMeasuredDimension(II)V

    .line 1342
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mInLayout:Z

    .line 1343
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    .line 1344
    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mInLayout:Z

    .line 1346
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1347
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1348
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/GridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1349
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 1353
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$LayoutParams;

    .line 1354
    if-eqz v0, :cond_0

    .line 1355
    invoke-virtual {p0, v3, v0}, Landroid/support/wearable/view/GridViewPager;->measureChild(Landroid/view/View;Landroid/support/wearable/view/GridViewPager$LayoutParams;)V

    .line 1347
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1359
    :cond_1
    return-void
.end method

.method public onPageScrolled(IIFFII)V
    .locals 7

    .prologue
    .line 1595
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mCalledSuper:Z

    .line 1601
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    move v1, p2

    move v2, p1

    move v3, p4

    move v4, p3

    move v5, p6

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageScrolled(IIFFII)V

    .line 1605
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    move v1, p2

    move v2, p1

    move v3, p4

    move v4, p3

    move v5, p6

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/wearable/view/BackgroundController;->onPageScrolled(IIFFII)V

    .line 1609
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1220
    instance-of v0, p1, Landroid/support/wearable/view/GridViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1221
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1235
    :goto_0
    return-void

    .line 1224
    :cond_0
    check-cast p1, Landroid/support/wearable/view/GridViewPager$SavedState;

    .line 1225
    invoke-virtual {p1}, Landroid/support/wearable/view/GridViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1226
    iget v0, p1, Landroid/support/wearable/view/GridViewPager$SavedState;->currentX:I

    iget v1, p1, Landroid/support/wearable/view/GridViewPager$SavedState;->currentY:I

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/GridViewPager;->pointInRange(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1229
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/support/wearable/view/GridViewPager$SavedState;->currentX:I

    iget v2, p1, Landroid/support/wearable/view/GridViewPager$SavedState;->currentY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    goto :goto_0

    .line 1231
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 1232
    invoke-virtual {p0, v2, v2}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1210
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1211
    new-instance v1, Landroid/support/wearable/view/GridViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/wearable/view/GridViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1212
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, v1, Landroid/support/wearable/view/GridViewPager$SavedState;->currentX:I

    .line 1213
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/support/wearable/view/GridViewPager$SavedState;->currentY:I

    .line 1215
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    .prologue
    .line 1389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1393
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    iget v5, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    iget v6, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    iget v7, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    iget v8, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/support/wearable/view/GridViewPager;->recomputeScrollPosition(IIIIIIII)V

    .line 1397
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 1686
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-nez v0, :cond_0

    .line 1687
    const/4 v0, 0x0

    .line 1707
    :goto_0
    return v0

    .line 1689
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1690
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1705
    :pswitch_0
    const-string v1, "GridViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown action type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1692
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerDown(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1695
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerMove(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1699
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->handlePointerUp(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 1702
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method pageBackgroundChanged(II)V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1, p2}, Landroid/support/wearable/view/BackgroundController;->onPageBackgroundChanged(II)V

    .line 930
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1302
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->infoForChild(Landroid/view/View;)Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 1307
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1308
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/GridViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1312
    :goto_0
    return-void

    .line 1310
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestFitSystemWindows()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method rowBackgroundChanged(I)V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/BackgroundController;->onRowBackgroundChanged(I)V

    .line 924
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result p1

    .line 528
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 529
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager;->scrollCurrentRowTo(I)V

    .line 530
    return-void
.end method

.method public setAdapter(Landroid/support/wearable/view/GridPagerAdapter;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridPagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 388
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, v6}, Landroid/support/wearable/view/GridPagerAdapter;->setOnBackgroundChangeListener(Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;)V

    .line 389
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 390
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 391
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;

    .line 396
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget v4, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionY:I

    iget v5, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->positionX:I

    iget-object v0, v0, Landroid/support/wearable/view/GridViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/support/wearable/view/GridPagerAdapter;->destroyItem(Landroid/view/ViewGroup;IILjava/lang/Object;)V

    .line 390
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 401
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 402
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 403
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->removeAllViews()V

    .line 404
    invoke-virtual {p0, v2, v2}, Landroid/support/wearable/view/GridViewPager;->scrollTo(II)V

    .line 405
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mRowScrollX:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 407
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 408
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 409
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 413
    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    .line 414
    iput v2, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    .line 415
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v1, :cond_7

    .line 416
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

    if-nez v1, :cond_2

    .line 417
    new-instance v1, Landroid/support/wearable/view/GridViewPager$PagerObserver;

    invoke-direct {v1, p0, v6}, Landroid/support/wearable/view/GridViewPager$PagerObserver;-><init>(Landroid/support/wearable/view/GridViewPager;Landroid/support/wearable/view/GridViewPager$1;)V

    iput-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

    .line 422
    :cond_2
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mObserver:Landroid/support/wearable/view/GridViewPager$PagerObserver;

    invoke-virtual {v1, v3}, Landroid/support/wearable/view/GridPagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 423
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v1, v3}, Landroid/support/wearable/view/GridPagerAdapter;->setOnBackgroundChangeListener(Landroid/support/wearable/view/GridPagerAdapter$OnBackgroundChangeListener;)V

    .line 424
    iput-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 425
    iget-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 426
    iput-boolean v7, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    .line 430
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v3}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    .line 434
    iget v3, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedRowCount:I

    if-lez v3, :cond_3

    .line 435
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Point;->set(II)V

    .line 436
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v3

    iput v3, p0, Landroid/support/wearable/view/GridViewPager;->mExpectedCurrentColumnCount:I

    .line 445
    :cond_3
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    if-eqz v3, :cond_5

    .line 450
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Landroid/support/wearable/view/GridPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 451
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v1, v3, v2, v7}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZ)V

    .line 452
    iput-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredCurItem:Landroid/graphics/Point;

    .line 453
    iput-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 454
    iput-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 465
    :cond_4
    :goto_1
    if-eq v0, p1, :cond_9

    .line 466
    if-nez p1, :cond_8

    .line 468
    iput-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    .line 469
    invoke-direct {p0, v0, p1}, Landroid/support/wearable/view/GridViewPager;->adapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 470
    iput-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 479
    :goto_2
    return-void

    .line 455
    :cond_5
    if-nez v1, :cond_6

    .line 456
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    goto :goto_1

    .line 458
    :cond_6
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->requestLayout()V

    goto :goto_1

    .line 460
    :cond_7
    iget-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_4

    .line 462
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->cancelDrag()V

    goto :goto_1

    .line 472
    :cond_8
    iput-boolean v7, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    .line 473
    iput-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    goto :goto_2

    .line 476
    :cond_9
    iput-boolean v2, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    .line 477
    iput-object v6, p0, Landroid/support/wearable/view/GridViewPager;->mOldAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    goto :goto_2
.end method

.method public setConsumeWindowInsets(Z)V
    .locals 0

    .prologue
    .line 336
    iput-boolean p1, p0, Landroid/support/wearable/view/GridViewPager;->mConsumeInsets:Z

    .line 337
    return-void
.end method

.method public setCurrentItem(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 608
    iput-boolean v1, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 609
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZ)V

    .line 610
    return-void

    :cond_0
    move v0, v1

    .line 609
    goto :goto_0
.end method

.method public setCurrentItem(IIZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 624
    iput-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mDelayPopulate:Z

    .line 625
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZ)V

    .line 626
    return-void
.end method

.method setCurrentItemInternal(IIZZ)V
    .locals 6

    .prologue
    .line 637
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/wearable/view/GridViewPager;->setCurrentItemInternal(IIZZI)V

    .line 638
    return-void
.end method

.method setCurrentItemInternal(IIZZI)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 646
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v1}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    if-nez p4, :cond_2

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 654
    :cond_2
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v1}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result v2

    .line 655
    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v0, v1}, Landroid/support/wearable/view/GridViewPager;->limit(III)I

    move-result v1

    .line 660
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-eq v1, v3, :cond_5

    .line 661
    iput v0, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    .line 669
    :goto_1
    iget-boolean v3, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_7

    .line 673
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 674
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, v2, v1}, Landroid/support/wearable/view/GridPagerAdapter;->setCurrentColumnForRow(II)V

    .line 680
    if-eqz v5, :cond_4

    .line 681
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 682
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v0, v2, v1}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageSelected(II)V

    .line 684
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    if-eqz v0, :cond_4

    .line 685
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mBackgroundController:Landroid/support/wearable/view/BackgroundController;

    invoke-virtual {v0, v2, v1}, Landroid/support/wearable/view/BackgroundController;->onPageSelected(II)V

    .line 688
    :cond_4
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->requestLayout()V

    goto :goto_0

    .line 663
    :cond_5
    iget-object v3, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_6

    .line 664
    iput v5, p0, Landroid/support/wearable/view/GridViewPager;->mScrollAxis:I

    goto :goto_1

    :cond_6
    move v5, v0

    .line 667
    goto :goto_1

    .line 690
    :cond_7
    invoke-direct {p0, v1, v2}, Landroid/support/wearable/view/GridViewPager;->populate(II)V

    move-object v0, p0

    move v3, p3

    move v4, p5

    .line 691
    invoke-direct/range {v0 .. v5}, Landroid/support/wearable/view/GridViewPager;->scrollToItem(IIZIZ)V

    goto :goto_0
.end method

.method public setOffscreenPageCount(I)V
    .locals 3

    .prologue
    .line 758
    if-gtz p1, :cond_0

    .line 759
    const-string v0, "GridViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 p1, 0x1

    .line 763
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    if-eq p1, v0, :cond_1

    .line 764
    iput p1, p0, Landroid/support/wearable/view/GridViewPager;->mOffscreenPageCount:I

    .line 765
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    .line 767
    :cond_1
    return-void
.end method

.method public setOnAdapterChangeListener(Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;)V
    .locals 2

    .prologue
    .line 502
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    .line 503
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mAdapterChangeNotificationPending:Z

    if-nez v0, :cond_0

    .line 504
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/wearable/view/GridViewPager;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-interface {p1, v0, v1}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 506
    :cond_0
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 342
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager;->mOnPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    .line 493
    return-void
.end method

.method public setPageMargins(II)V
    .locals 9

    .prologue
    .line 776
    iget v8, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    .line 777
    iput p1, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    .line 778
    iget v6, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    .line 779
    iput p2, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    .line 780
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getWidth()I

    move-result v1

    .line 781
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getHeight()I

    move-result v3

    .line 782
    iget-boolean v0, p0, Landroid/support/wearable/view/GridViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mItems:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    iget v5, p0, Landroid/support/wearable/view/GridViewPager;->mColMargin:I

    iget v7, p0, Landroid/support/wearable/view/GridViewPager;->mRowMargin:I

    move-object v0, p0

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v8}, Landroid/support/wearable/view/GridViewPager;->recomputeScrollPosition(IIIIIIII)V

    .line 786
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->requestLayout()V

    .line 788
    :cond_0
    return-void
.end method

.method public setSlideAnimationDuration(I)V
    .locals 0

    .prologue
    .line 791
    iput p1, p0, Landroid/support/wearable/view/GridViewPager;->mSlideAnimationDurationMs:I

    .line 792
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/wearable/view/GridViewPager;->smoothScrollTo(III)V

    .line 820
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 830
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mCurItem:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->getRowScrollX(I)I

    move-result v1

    .line 835
    invoke-virtual {p0}, Landroid/support/wearable/view/GridViewPager;->getScrollY()I

    move-result v2

    .line 836
    sub-int v3, p1, v1

    .line 837
    sub-int v4, p2, v2

    .line 838
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 839
    invoke-direct {p0, v5}, Landroid/support/wearable/view/GridViewPager;->completeScroll(Z)V

    .line 840
    invoke-direct {p0}, Landroid/support/wearable/view/GridViewPager;->populate()V

    .line 841
    invoke-direct {p0, v5}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    goto :goto_0

    .line 844
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/wearable/view/GridViewPager;->setScrollState(I)V

    .line 845
    iget v5, p0, Landroid/support/wearable/view/GridViewPager;->mSlideAnimationDurationMs:I

    .line 853
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 854
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method
