.class public Landroid/support/wearable/view/WearableFrameLayout;
.super Landroid/view/ViewGroup;
.source "WearableFrameLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033

.field private static final TAG:Ljava/lang/String; = "WearableFrameLayout"


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mForegroundInPadding:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundTintList:Landroid/content/res/ColorStateList;

.field private mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mHasForegroundTint:Z

.field private mHasForegroundTintMode:Z

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private mRound:Z

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    .line 71
    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 72
    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 73
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    .line 74
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    .line 76
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 79
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 82
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 85
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 91
    const/16 v0, 0x77

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    .line 94
    iput-boolean v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    .line 97
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 101
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/WearableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/WearableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    .line 71
    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 72
    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 73
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    .line 74
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    .line 76
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 79
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 82
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 85
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 91
    const/16 v0, 0x77

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    .line 94
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    .line 97
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 101
    iput-boolean v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    .line 119
    sget-object v0, Landroid/support/wearable/R$styleable;->WearableFrameLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_android_foregroundGravity:I

    iget v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    .line 125
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_android_foreground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_0
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_android_measureAllChildren:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableFrameLayout;->setMeasureAllChildren(Z)V

    .line 134
    :cond_1
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_android_foregroundTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_android_foregroundTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 137
    iput-boolean v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    .line 140
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->applyForegroundTint()V

    .line 143
    return-void
.end method

.method private applyForegroundTint()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    if-eqz v0, :cond_3

    .line 382
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 384
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 388
    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 394
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 398
    :cond_3
    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    .prologue
    .line 416
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottom()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottom()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private getParamsGravity(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 718
    instance-of v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 647
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 649
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 650
    iget-object v6, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 652
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    if-eqz v0, :cond_0

    .line 653
    iput-boolean v5, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 654
    iget-object v3, p0, Landroid/support/wearable/view/WearableFrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 655
    iget-object v4, p0, Landroid/support/wearable/view/WearableFrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 657
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 658
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 660
    iget-boolean v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v2, :cond_2

    .line 661
    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 667
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getLayoutDirection()I

    move-result v5

    .line 668
    iget v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 671
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 674
    :cond_0
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 676
    :cond_1
    return-void

    .line 663
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v3, v2, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    .line 248
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 251
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 239
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 242
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 260
    new-instance v0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->generateDefaultLayoutParams()Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
    .locals 2

    .prologue
    .line 705
    new-instance v0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 723
    new-instance v0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    check-cast p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;-><init>(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)V

    return-object v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    return v0
.end method

.method public getForegroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getForegroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getMeasureAllChildren()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method getPaddingLeftWithForeground()I
    .locals 2

    .prologue
    .line 401
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getPaddingRightWithForeground()I
    .locals 2

    .prologue
    .line 406
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 230
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 231
    :cond_0
    return-void
.end method

.method layoutChildren(IIIIZ)V
    .locals 13

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getChildCount()I

    move-result v3

    .line 542
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeftWithForeground()I

    move-result v4

    .line 543
    sub-int v0, p3, p1

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRightWithForeground()I

    move-result v1

    sub-int v5, v0, v1

    .line 545
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTopWithForeground()I

    move-result v6

    .line 546
    sub-int v0, p4, p2

    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottomWithForeground()I

    move-result v1

    sub-int v7, v0, v1

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 550
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    .line 551
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 552
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 553
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .line 555
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 556
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 561
    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsGravity(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v1

    .line 562
    const/4 v11, -0x1

    if-ne v1, v11, :cond_0

    .line 563
    const v1, 0x800033

    .line 566
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getLayoutDirection()I

    move-result v11

    .line 567
    invoke-static {v1, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    .line 568
    and-int/lit8 v12, v1, 0x70

    .line 570
    and-int/lit8 v1, v11, 0x7

    sparse-switch v1, :sswitch_data_0

    .line 582
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v1

    add-int/2addr v1, v4

    .line 585
    :goto_1
    sparse-switch v12, :sswitch_data_1

    .line 597
    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v0

    add-int/2addr v0, v6

    .line 600
    :goto_2
    add-int/2addr v9, v1

    add-int/2addr v10, v0

    invoke-virtual {v8, v1, v0, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 550
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 572
    :sswitch_0
    sub-int v1, v5, v4

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v11

    add-int/2addr v1, v11

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v11

    sub-int/2addr v1, v11

    .line 574
    goto :goto_1

    .line 576
    :sswitch_1
    if-nez p5, :cond_1

    .line 577
    sub-int v1, v5, v9

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v11

    sub-int/2addr v1, v11

    .line 578
    goto :goto_1

    .line 587
    :sswitch_2
    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v0

    add-int/2addr v0, v6

    .line 588
    goto :goto_2

    .line 590
    :sswitch_3
    sub-int v11, v7, v6

    sub-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v6

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v0

    sub-int v0, v11, v0

    .line 592
    goto :goto_2

    .line 594
    :sswitch_4
    sub-int v11, v7, v10

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v0

    sub-int v0, v11, v0

    .line 595
    goto :goto_2

    .line 603
    :cond_3
    return-void

    .line 570
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 585
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .line 520
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/wearable/view/WearableFrameLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 523
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v0

    invoke-static {p4, v2, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 527
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 528
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 154
    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mRound:Z

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->requestLayout()V

    .line 158
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 148
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->requestApplyInsets()V

    .line 149
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 729
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 730
    const-class v0, Landroid/support/wearable/view/WearableFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 731
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 736
    const-class v0, Landroid/support/wearable/view/WearableFrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 737
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 535
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/wearable/view/WearableFrameLayout;->layoutChildren(IIIIZ)V

    .line 536
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getChildCount()I

    move-result v11

    .line 428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    move v6, v0

    .line 431
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 433
    const/4 v9, 0x0

    .line 434
    const/4 v8, 0x0

    .line 435
    const/4 v7, 0x0

    .line 437
    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v11, :cond_5

    .line 438
    invoke-virtual {p0, v10}, Landroid/support/wearable/view/WearableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 439
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_a

    .line 440
    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/wearable/view/WearableFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 441
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .line 442
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 444
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 446
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v7, v2}, Landroid/support/wearable/view/WearableFrameLayout;->combineMeasuredStates(II)I

    move-result v2

    .line 447
    if-eqz v6, :cond_3

    .line 448
    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    invoke-direct {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 450
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v2

    move v1, v3

    move v2, v4

    .line 437
    :goto_2
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v7, v0

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 428
    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 457
    :cond_5
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeftWithForeground()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRightWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    .line 458
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottomWithForeground()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v9

    .line 461
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 462
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 465
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_6

    .line 467
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 468
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 471
    :cond_6
    invoke-static {v0, p1, v7}, Landroid/support/wearable/view/WearableFrameLayout;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v7, 0x10

    invoke-static {v1, p2, v2}, Landroid/support/wearable/view/WearableFrameLayout;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->setMeasuredDimension(II)V

    .line 475
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 476
    const/4 v0, 0x1

    if-le v4, v0, :cond_9

    .line 477
    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v4, :cond_9

    .line 478
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 480
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;

    .line 485
    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_7

    .line 486
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeftWithForeground()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRightWithForeground()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v5

    sub-int/2addr v2, v5

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v5

    sub-int/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 497
    :goto_4
    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 498
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTopWithForeground()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottomWithForeground()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v1

    sub-int v1, v5, v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 509
    :goto_5
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 477
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 491
    :cond_7
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingLeftWithForeground()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingRightWithForeground()I

    move-result v5

    add-int/2addr v2, v5

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsLeftMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v5

    add-int/2addr v2, v5

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsRightMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v5

    add-int/2addr v2, v5

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsWidth(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v5

    invoke-static {p1, v2, v5}, Landroid/support/wearable/view/WearableFrameLayout;->getChildMeasureSpec(III)I

    move-result v2

    goto :goto_4

    .line 503
    :cond_8
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingTopWithForeground()I

    move-result v5

    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getPaddingBottomWithForeground()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsTopMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsBottomMargin(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getParamsHeight(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2, v5, v1}, Landroid/support/wearable/view/WearableFrameLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_5

    .line 512
    :cond_9
    return-void

    :cond_a
    move v0, v7

    move v1, v8

    move v2, v9

    goto/16 :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 638
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundBoundsChanged:Z

    .line 640
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 273
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 275
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 279
    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 280
    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 281
    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 282
    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 284
    if-eqz p1, :cond_4

    .line 285
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/WearableFrameLayout;->setWillNotDraw(Z)V

    .line 286
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 288
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 291
    :cond_1
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->applyForegroundTint()V

    .line 292
    iget v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    .line 293
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 294
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 296
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 297
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 298
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 304
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->requestLayout()V

    .line 305
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->invalidate()V

    .line 307
    :cond_3
    return-void

    .line 302
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableFrameLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    if-eq v0, p1, :cond_2

    .line 181
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_4

    .line 182
    const v0, 0x800003

    or-int/2addr v0, p1

    .line 185
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 186
    or-int/lit8 v0, v0, 0x30

    .line 189
    :cond_0
    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    .line 192
    iget v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundGravity:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 194
    iget-object v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 196
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 197
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 198
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    .line 207
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableFrameLayout;->requestLayout()V

    .line 209
    :cond_2
    return-void

    .line 201
    :cond_3
    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingLeft:I

    .line 202
    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingTop:I

    .line 203
    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingRight:I

    .line 204
    iput v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundPaddingBottom:I

    goto :goto_1

    :cond_4
    move v0, p1

    goto :goto_0
.end method

.method public setForegroundInPadding(Z)V
    .locals 0

    .prologue
    .line 343
    iput-boolean p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundInPadding:Z

    .line 344
    return-void
.end method

.method public setForegroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTint:Z

    .line 336
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->applyForegroundTint()V

    .line 337
    return-void
.end method

.method public setForegroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 365
    iput-object p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mHasForegroundTintMode:Z

    .line 368
    invoke-direct {p0}, Landroid/support/wearable/view/WearableFrameLayout;->applyForegroundTint()V

    .line 369
    return-void
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0

    .prologue
    .line 687
    iput-boolean p1, p0, Landroid/support/wearable/view/WearableFrameLayout;->mMeasureAllChildren:Z

    .line 688
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v2, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 217
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableFrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
