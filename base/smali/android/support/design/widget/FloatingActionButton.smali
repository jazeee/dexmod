.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation


# static fields
.field private static final SIZE_MINI:I = 0x1

.field private static final SIZE_NORMAL:I


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field private mContentPadding:I

.field private final mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

.field private mRippleColor:I

.field private final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 112
    sget-object v0, Landroid/support/design/R$styleable;->FloatingActionButton:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    sget v1, Landroid/support/design/R$styleable;->FloatingActionButton_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    sget v2, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 117
    sget v2, Landroid/support/design/R$styleable;->FloatingActionButton_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 119
    sget v2, Landroid/support/design/R$styleable;->FloatingActionButton_rippleColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 120
    sget v2, Landroid/support/design/R$styleable;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    .line 121
    sget v2, Landroid/support/design/R$styleable;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    .line 122
    sget v2, Landroid/support/design/R$styleable;->FloatingActionButton_elevation:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 123
    sget v2, Landroid/support/design/R$styleable;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    .line 147
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 148
    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 149
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonLollipop;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/FloatingActionButtonLollipop;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    .line 156
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/design/R$dimen;->design_fab_content_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 158
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->mContentPadding:I

    .line 160
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 162
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/FloatingActionButtonImpl;->setElevation(F)V

    .line 163
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/FloatingActionButtonImpl;->setPressedTranslationZ(F)V

    .line 164
    return-void

    .line 150
    :cond_0
    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    .line 151
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/FloatingActionButtonHoneycombMr1;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    goto :goto_0

    .line 153
    :cond_1
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonEclairMr1;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/FloatingActionButtonEclairMr1;-><init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mContentPadding:I

    return v0
.end method

.method static synthetic access$201(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .prologue
    .line 364
    sparse-switch p0, :sswitch_data_0

    .line 376
    :goto_0
    return-object p1

    .line 366
    :sswitch_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 368
    :sswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 370
    :sswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 372
    :sswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 374
    :sswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 364
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method private static resolveAdjustedSize(II)I
    .locals 2

    .prologue
    .line 340
    .line 341
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 342
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 343
    sparse-switch v1, :sswitch_data_0

    .line 360
    :goto_0
    :sswitch_0
    return p0

    .line 353
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 357
    goto :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    .locals 1
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$2;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/FloatingActionButton$2;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 329
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onDrawableStateChanged([I)V

    .line 330
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method final getSizeDimension()I
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mSize:I

    packed-switch v0, :pswitch_data_0

    .line 322
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    .line 319
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 284
    return-void
.end method

.method public hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 294
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 335
    invoke-super {p0}, Landroid/widget/ImageButton;->jumpDrawablesToCurrentState()V

    .line 336
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    .line 337
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 170
    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v1

    .line 171
    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v0

    .line 175
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 178
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 181
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->mBorderWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 258
    :cond_0
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 217
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    .line 218
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 220
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 247
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 248
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 250
    :cond_0
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 191
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    if-eq v0, p1, :cond_0

    .line 192
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->mRippleColor:I

    .line 193
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setRippleColor(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 266
    return-void
.end method

.method public show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .locals 2
    .param p1    # Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImpl:Landroid/support/design/widget/FloatingActionButtonImpl;

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->wrapOnVisibilityChangedListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    .line 276
    return-void
.end method
