.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayoutImpl;


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    new-array v0, v1, [I

    const v3, 0x10100b3

    aput v3, v0, v2

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    :goto_1
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 351
    if-lt v0, v4, :cond_2

    .line 352
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    .line 356
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 182
    goto :goto_0

    :cond_1
    move v1, v2

    .line 185
    goto :goto_1

    .line 354
    :cond_2
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 362
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 366
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 369
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 194
    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 196
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 204
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 206
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 207
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 208
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 209
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 231
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 232
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 233
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 234
    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 370
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 371
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 372
    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 373
    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v1, v0

    .line 375
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 376
    new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 378
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 379
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 380
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 381
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 383
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v5, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 384
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 385
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 386
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 389
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 391
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 394
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 395
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 396
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v1, p0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    .line 398
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v1, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 401
    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 404
    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 97
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 97
    invoke-static {p0}, Landroid/support/v4/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .locals 4

    .prologue
    .line 1861
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    .line 1862
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1863
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1864
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1868
    :goto_1
    return-object v0

    .line 1862
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1868
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 992
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 993
    const-string v0, "LEFT"

    .line 998
    :goto_0
    return-object v0

    .line 995
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 996
    const-string v0, "RIGHT"

    goto :goto_0

    .line 998
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1284
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1285
    if-eqz v1, :cond_0

    .line 1286
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1288
    :cond_0
    return v0
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1787
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1788
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1789
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1790
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$200(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    const/4 v0, 0x1

    .line 1794
    :goto_1
    return v0

    .line 1788
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1794
    goto :goto_1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .prologue
    .line 1857
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1997
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1999
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    .prologue
    .line 1168
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1169
    :cond_0
    const/4 v0, 0x0

    .line 1173
    :goto_0
    return v0

    .line 1172
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1126
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1128
    if-nez v0, :cond_0

    .line 1129
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1131
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1132
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 1141
    :goto_0
    return-object v0

    .line 1135
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1137
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1138
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1145
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1146
    if-nez v0, :cond_0

    .line 1147
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1149
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1150
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 1159
    :goto_0
    return-object v0

    .line 1153
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1155
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1156
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1159
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private resolveShadowDrawables()V
    .locals 1

    .prologue
    .line 1118
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1121
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1122
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 886
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 887
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 888
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 889
    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    .line 893
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 887
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 896
    :cond_2
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    .line 900
    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 548
    if-nez p1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 554
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1823
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x60000

    if-ne v0, v2, :cond_0

    .line 1854
    :goto_0
    return-void

    .line 1829
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    move v2, v1

    move v0, v1

    .line 1831
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1832
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1833
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1834
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1835
    const/4 v0, 0x1

    .line 1836
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1831
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1839
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1843
    :cond_3
    if-nez v0, :cond_5

    .line 1844
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1845
    :goto_3
    if-ge v1, v2, :cond_5

    .line 1846
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1847
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 1848
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1845
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1853
    :cond_5
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1969
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1971
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    .line 1972
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1975
    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1986
    :goto_0
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v0, :cond_1

    .line 1987
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1989
    :cond_1
    return-void

    .line 1980
    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method cancelChildViewTouch()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 1873
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_1

    .line 1874
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1875
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1877
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1878
    :goto_0
    if-ge v7, v1, :cond_0

    .line 1879
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1878
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1881
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1882
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1884
    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 937
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 938
    and-int/2addr v0, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1813
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .locals 1

    .prologue
    .line 1701
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 1702
    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 3

    .prologue
    .line 1712
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1713
    if-nez v0, :cond_0

    .line 1714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No drawer view found with gravity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1715
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1717
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1718
    return-void
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1659
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 1660
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1669
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1673
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1674
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1675
    invoke-static {v0, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    .line 1676
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1691
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1692
    return-void

    .line 1677
    :cond_1
    if-eqz p2, :cond_3

    .line 1678
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1680
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1681
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    .line 1682
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1681
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1684
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1687
    :cond_3
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1688
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1689
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeDrawers()V
    .locals 1

    .prologue
    .line 1549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1550
    return-void
.end method

.method closeDrawers(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1553
    .line 1554
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    .line 1555
    :goto_0
    if-ge v2, v4, :cond_3

    .line 1556
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1557
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1559
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$200(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1563
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1565
    const/4 v7, 0x3

    invoke-virtual {p0, v5, v7}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1566
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v6, v6

    .line 1567
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1566
    invoke-virtual {v7, v5, v6, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1573
    :goto_1
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$202(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z

    .line 1555
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1569
    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1570
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1569
    invoke-virtual {v6, v5, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_1

    .line 1576
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1577
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1579
    if-eqz v1, :cond_4

    .line 1580
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1582
    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1269
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 1270
    const/4 v1, 0x0

    .line 1271
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1272
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    .line 1273
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1275
    :cond_0
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 1278
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v4}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1279
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1281
    :cond_1
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 835
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 836
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 838
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 842
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 843
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 842
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 847
    :cond_0
    invoke-direct {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 852
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_1

    .line 855
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 859
    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 862
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 863
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 864
    invoke-static {v0, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 865
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 869
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 870
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 869
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 874
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 877
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 881
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 883
    :cond_2
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 907
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 908
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 907
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 911
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .prologue
    .line 1352
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v4

    .line 1353
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v5

    .line 1354
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1356
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1357
    if-eqz v5, :cond_4

    .line 1358
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1359
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_3

    .line 1360
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1361
    if-eq v0, p2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 1362
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1363
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lt v8, v4, :cond_2

    .line 1367
    const/4 v8, 0x3

    invoke-virtual {p0, v0, v8}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1368
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1369
    if-le v0, v1, :cond_8

    :goto_1
    move v1, v0

    move v0, v2

    .line 1359
    :cond_0
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 1371
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1372
    if-lt v0, v2, :cond_0

    :cond_2
    move v0, v2

    goto :goto_2

    .line 1375
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    move v0, v2

    .line 1377
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    .line 1378
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1380
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-eqz v5, :cond_6

    .line 1381
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 1382
    int-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1383
    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1384
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1386
    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1411
    :cond_5
    :goto_3
    return v7

    .line 1387
    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    .line 1388
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1389
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1390
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1391
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v2

    .line 1392
    const/4 v3, 0x0

    int-to-float v4, v1

    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1393
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1394
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v1

    .line 1395
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1394
    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1396
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1397
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1398
    :cond_7
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    .line 1399
    invoke-virtual {p0, p2, v0}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1400
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1401
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1402
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1403
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v3

    .line 1404
    const/4 v4, 0x0

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1405
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1406
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v0, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1407
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1406
    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1408
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1409
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 972
    .line 973
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 972
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x7

    .line 974
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 975
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 976
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 977
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    .line 978
    and-int/lit8 v4, v4, 0x7

    if-ne v4, v2, :cond_0

    .line 982
    :goto_1
    return-object v0

    .line 975
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 982
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 5

    .prologue
    .line 942
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 943
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 944
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 945
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 946
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move-object v0, v1

    .line 950
    :goto_1
    return-object v0

    .line 943
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 950
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1799
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1818
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1804
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDrawerElevation()F
    .locals 1

    .prologue
    .line 430
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 431
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawerLockMode(I)I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 689
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 691
    sparse-switch p1, :sswitch_data_0

    .line 734
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 693
    :sswitch_0
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    if-eq v1, v2, :cond_1

    .line 694
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_0

    .line 696
    :cond_1
    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 698
    :goto_1
    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 696
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_1

    .line 703
    :sswitch_1
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    if-eq v1, v2, :cond_3

    .line 704
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 706
    :cond_3
    if-nez v0, :cond_4

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 708
    :goto_2
    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 706
    :cond_4
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_2

    .line 713
    :sswitch_2
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    if-eq v1, v2, :cond_5

    .line 714
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    .line 716
    :cond_5
    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 718
    :goto_3
    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 716
    :cond_6
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_3

    .line 723
    :sswitch_3
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    if-eq v1, v2, :cond_7

    .line 724
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 726
    :cond_7
    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 728
    :goto_4
    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 726
    :cond_8
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_4

    .line 691
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 750
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    return v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 783
    .line 784
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 783
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 785
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 786
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 790
    :goto_0
    return-object v0

    .line 787
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 788
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0

    .line 790
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 932
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 933
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1415
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(I)Z
    .locals 1

    .prologue
    .line 1748
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1749
    if-eqz v0, :cond_0

    .line 1750
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    .line 1752
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1731
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1734
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1735
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1419
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1421
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1420
    invoke-static {v0, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1422
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_0

    move v0, v1

    .line 1430
    :goto_0
    return v0

    .line 1426
    :cond_0
    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_1

    move v0, v1

    .line 1428
    goto :goto_0

    .line 1430
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(I)Z
    .locals 1

    .prologue
    .line 1779
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1780
    if-eqz v0, :cond_0

    .line 1781
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v0

    .line 1783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1764
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1767
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 954
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 955
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 956
    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 957
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 958
    sub-int v0, v1, v0

    .line 960
    const/4 v1, 0x3

    .line 961
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 962
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 963
    return-void

    .line 961
    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1009
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1011
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1003
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1005
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1340
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1341
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1342
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    .line 1343
    if-lez v0, :cond_0

    .line 1344
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1345
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1348
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1435
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1438
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1439
    invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1443
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v2

    .line 1477
    :goto_1
    if-nez v3, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    .line 1445
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1447
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1448
    iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1449
    iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 1450
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    .line 1451
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1455
    :goto_2
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1456
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_1

    .line 1462
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1464
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    move v0, v2

    goto :goto_1

    .line 1471
    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1472
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1473
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    .line 1443
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1888
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    invoke-static {p2}, Landroid/support/v4/view/KeyEventCompat;->startTracking(Landroid/view/KeyEvent;)V

    .line 1890
    const/4 v0, 0x1

    .line 1892
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1897
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1898
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1899
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1900
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1902
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1904
    :goto_0
    return v0

    .line 1902
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1904
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 1178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1179
    sub-int v6, p4, p2

    .line 1180
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    .line 1181
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_8

    .line 1182
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1184
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1188
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1190
    invoke-virtual {p0, v8}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1191
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1192
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1193
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 1191
    invoke-virtual {v8, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1181
    :cond_0
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 1195
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1196
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1200
    const/4 v1, 0x3

    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1201
    neg-int v1, v9

    int-to-float v2, v9

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    .line 1202
    add-int v1, v9, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    .line 1208
    :goto_2
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v3

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 1210
    :goto_3
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v4, v4, 0x70

    .line 1212
    sparse-switch v4, :sswitch_data_0

    .line 1215
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1246
    :goto_4
    if-eqz v3, :cond_2

    .line 1247
    invoke-virtual {p0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1250
    :cond_2
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 1251
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1252
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1204
    :cond_3
    int-to-float v1, v9

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v2, v6, v1

    .line 1205
    sub-int v1, v6, v2

    int-to-float v1, v1

    int-to-float v3, v9

    div-float/2addr v1, v3

    goto :goto_2

    .line 1208
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 1221
    :sswitch_0
    sub-int v4, p5, p3

    .line 1222
    iget v10, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v4, v10

    .line 1223
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/2addr v9, v2

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v11

    .line 1222
    invoke-virtual {v8, v2, v10, v9, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1230
    :sswitch_1
    sub-int v11, p5, p3

    .line 1231
    sub-int v4, v11, v10

    div-int/lit8 v4, v4, 0x2

    .line 1235
    iget v12, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v4, v12, :cond_6

    .line 1236
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1240
    :cond_5
    :goto_6
    add-int/2addr v9, v2

    add-int/2addr v10, v4

    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 1237
    :cond_6
    add-int v12, v4, v10

    iget v13, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v13, v11, v13

    if-le v12, v13, :cond_5

    .line 1238
    iget v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v4, v11, v4

    sub-int/2addr v4, v10

    goto :goto_6

    .line 1250
    :cond_7
    const/4 v0, 0x4

    goto :goto_5

    .line 1256
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1257
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1258
    return-void

    .line 1212
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1015
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1016
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1017
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1018
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1020
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_10

    .line 1021
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1026
    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_1

    .line 1028
    if-nez v2, :cond_1

    .line 1030
    const/16 v1, 0x12c

    .line 1032
    :cond_1
    const/high16 v2, -0x80000000

    if-eq v3, v2, :cond_10

    .line 1035
    if-nez v3, :cond_10

    .line 1037
    const/16 v0, 0x12c

    move v2, v1

    move v1, v0

    .line 1045
    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1047
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v3, v0

    .line 1048
    :goto_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 1052
    const/4 v5, 0x0

    .line 1053
    const/4 v4, 0x0

    .line 1054
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1055
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-ge v7, v9, :cond_f

    .line 1056
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1058
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_3

    .line 1062
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1064
    if-eqz v3, :cond_2

    .line 1065
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v6, v8}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v6

    .line 1066
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1067
    sget-object v11, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v11, v10, v12, v6}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 1073
    :cond_2
    :goto_3
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1075
    iget v6, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v6, v2, v6

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v11

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1077
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v11, v1, v11

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1079
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    .line 1055
    :cond_3
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 1040
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_5
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 1069
    :cond_6
    sget-object v11, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v12, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v11, v0, v12, v6}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    goto :goto_3

    .line 1080
    :cond_7
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1081
    sget-boolean v6, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v6, :cond_8

    .line 1082
    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v6

    iget v11, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_8

    .line 1083
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v10, v6}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1087
    :cond_8
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v6

    and-int/lit8 v11, v6, 0x7

    .line 1090
    const/4 v6, 0x3

    if-ne v11, v6, :cond_b

    const/4 v6, 0x1

    .line 1091
    :goto_5
    if-eqz v6, :cond_9

    if-nez v5, :cond_a

    :cond_9
    if-nez v6, :cond_c

    if-eqz v4, :cond_c

    .line 1093
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child drawer has absolute gravity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1094
    invoke-static {v11}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but this DrawerLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already has a drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1090
    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    .line 1097
    :cond_c
    if-eqz v6, :cond_d

    .line 1098
    const/4 v5, 0x1

    .line 1102
    :goto_6
    iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v11

    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v11}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v6

    .line 1105
    iget v11, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v12, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    invoke-static {p2, v11, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1108
    invoke-virtual {v10, v6, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4

    .line 1100
    :cond_d
    const/4 v4, 0x1

    goto :goto_6

    .line 1110
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    :cond_f
    return-void

    :cond_10
    move v2, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1909
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_1

    .line 1910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1936
    :cond_0
    :goto_0
    return-void

    .line 1914
    :cond_1
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1915
    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1917
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v0, :cond_2

    .line 1918
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1919
    if-eqz v0, :cond_2

    .line 1920
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1924
    :cond_2
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    if-eq v0, v2, :cond_3

    .line 1925
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1927
    :cond_3
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v0, v2, :cond_4

    .line 1928
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1930
    :cond_4
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v0, v2, :cond_5

    .line 1931
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v1, 0x800003

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1933
    :cond_5
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v0, v2, :cond_0

    .line 1934
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v1, 0x800005

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .prologue
    .line 1335
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1336
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1940
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1941
    new-instance v6, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v6, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1943
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v7

    move v5, v3

    .line 1944
    :goto_0
    if-ge v5, v7, :cond_1

    .line 1945
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1946
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1948
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    .line 1950
    :goto_1
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    move v4, v2

    .line 1951
    :goto_2
    if-nez v1, :cond_0

    if-eqz v4, :cond_4

    .line 1954
    :cond_0
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1959
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1960
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1961
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 1962
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    iput v0, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 1964
    return-object v6

    :cond_2
    move v1, v3

    .line 1948
    goto :goto_1

    :cond_3
    move v4, v3

    .line 1950
    goto :goto_2

    .line 1944
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1482
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1483
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1488
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1529
    :goto_0
    :pswitch_0
    return v1

    .line 1490
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1492
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1493
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1494
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1495
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    .line 1500
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1503
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v5, v0

    float-to-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 1504
    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1505
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v0, v4

    .line 1506
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr v3, v4

    .line 1507
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v4

    .line 1508
    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    mul-int v3, v4, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 1510
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    .line 1511
    if-eqz v0, :cond_1

    .line 1512
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 1516
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1517
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1512
    goto :goto_1

    .line 1522
    :pswitch_3
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1523
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1524
    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 1

    .prologue
    .line 1634
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 1635
    return-void
.end method

.method public openDrawer(IZ)V
    .locals 3

    .prologue
    .line 1645
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1646
    if-nez v0, :cond_0

    .line 1647
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No drawer view found with gravity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1648
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1651
    return-void
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1590
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 1591
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1600
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1604
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1605
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 1606
    invoke-static {v0, v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    .line 1607
    invoke-static {v0, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1609
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 1624
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1625
    return-void

    .line 1610
    :cond_1
    if-eqz p2, :cond_3

    .line 1611
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1613
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1614
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1616
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1617
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1616
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1620
    :cond_3
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1621
    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0, v2, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1622
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 565
    if-nez p1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 1537
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1539
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1540
    if-eqz p1, :cond_0

    .line 1541
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1543
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1262
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1263
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1265
    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 442
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 443
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 444
    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 445
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 446
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawerElevation(F)V
    .locals 3

    .prologue
    .line 413
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 414
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 415
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 416
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 533
    :cond_0
    if-eqz p1, :cond_1

    .line 534
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 538
    :cond_1
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 539
    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 590
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 591
    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 2

    .prologue
    .line 613
    .line 614
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 613
    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 616
    sparse-switch p2, :sswitch_data_0

    .line 631
    :goto_0
    if-eqz p1, :cond_0

    .line 633
    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 634
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 636
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 651
    :cond_1
    :goto_2
    return-void

    .line 618
    :sswitch_0
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_0

    .line 621
    :sswitch_1
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 624
    :sswitch_2
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    .line 627
    :sswitch_3
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 633
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    .line 638
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 644
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 616
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x800003 -> :sswitch_2
        0x800005 -> :sswitch_3
    .end sparse-switch

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 672
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 677
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 678
    return-void
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 503
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .prologue
    const v2, 0x800005

    const v1, 0x800003

    .line 468
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    and-int v0, p2, v1

    if-ne v0, v1, :cond_2

    .line 473
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 483
    :goto_1
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 484
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    goto :goto_0

    .line 474
    :cond_2
    and-int v0, p2, v2

    if-ne v0, v2, :cond_3

    .line 475
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 476
    :cond_3
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 477
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 478
    :cond_4
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 479
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 764
    .line 765
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 764
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 766
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 767
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 769
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 914
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 915
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v1

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 921
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-static {v0, p2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    .line 920
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 511
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 512
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 513
    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    .prologue
    .line 1318
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1319
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1320
    return-void

    .line 1318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1298
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1299
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1300
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 1330
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1331
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1332
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 798
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    .line 799
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v3

    .line 802
    if-eq v2, v1, :cond_0

    if-ne v3, v1, :cond_2

    :cond_0
    move v2, v1

    .line 810
    :goto_0
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 811
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 812
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    .line 813
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    .line 819
    :cond_1
    :goto_1
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v2, v0, :cond_6

    .line 820
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 822
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 825
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 826
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 827
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v0, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 826
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 804
    :cond_2
    if-eq v2, v0, :cond_3

    if-ne v3, v0, :cond_4

    :cond_3
    move v2, v0

    .line 805
    goto :goto_0

    .line 807
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 814
    :cond_5
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 815
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    goto :goto_1

    .line 831
    :cond_6
    return-void
.end method
