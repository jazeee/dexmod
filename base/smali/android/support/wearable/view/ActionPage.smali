.class public Landroid/support/wearable/view/ActionPage;
.super Landroid/view/ViewGroup;
.source "ActionPage.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CIRCLE_SIZE_RATIO:F = 0.45f

.field private static final CIRCLE_VERT_POSITION_SQUARE:F = 0.43f

.field private static final DEBUG:Z = false

.field private static final LABEL_BOTTOM_MARGIN_RATIO_ROUND:F = 0.09375f

.field private static final LABEL_WIDTH_RATIO:F = 0.892f

.field private static final LABEL_WIDTH_RATIO_ROUND:F = 0.625f

.field public static SCALE_MODE_CENTER:I = 0x0

.field public static SCALE_MODE_FIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActionPage"


# instance fields
.field private mBottomInset:I

.field private final mButtonCenter:Landroid/graphics/Point;

.field private mButtonRadius:F

.field private mButtonSize:I

.field private final mCircularButton:Landroid/support/wearable/view/CircularButton;

.field private mInsetsApplied:Z

.field private mIsRound:Z

.field private final mLabel:Landroid/support/wearable/view/ActionLabel;

.field private mTextHeight:I

.field private mTextWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    sput v0, Landroid/support/wearable/view/ActionPage;->SCALE_MODE_CENTER:I

    .line 42
    const/4 v0, 0x0

    sput v0, Landroid/support/wearable/view/ActionPage;->SCALE_MODE_FIT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 68
    sget v0, Landroid/support/wearable/R$style;->Widget_ActionPage:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    .line 74
    new-instance v0, Landroid/support/wearable/view/CircularButton;

    invoke-direct {v0, p1}, Landroid/support/wearable/view/CircularButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    .line 76
    new-instance v0, Landroid/support/wearable/view/ActionLabel;

    invoke-direct {v0, p1}, Landroid/support/wearable/view/ActionLabel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    .line 77
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ActionLabel;->setGravity(I)V

    .line 78
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ActionLabel;->setMaxLines(I)V

    .line 80
    const/high16 v4, 0x3f800000    # 1.0f

    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v1, 0x1

    .line 84
    const/4 v0, 0x0

    .line 86
    sget-object v5, Landroid/support/wearable/R$styleable;->ActionPage:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 88
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    if-ge v5, v7, :cond_11

    .line 89
    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 90
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_color:I

    if-ne v7, v8, :cond_1

    .line 91
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/CircularButton;->setColor(Landroid/content/res/ColorStateList;)V

    .line 88
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92
    :cond_1
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_src:I

    if-ne v7, v8, :cond_2

    .line 93
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/CircularButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 94
    :cond_2
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_imageScaleMode:I

    if-ne v7, v8, :cond_3

    .line 95
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/CircularButton;->setImageScaleMode(I)V

    goto :goto_1

    .line 96
    :cond_3
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_buttonRippleColor:I

    if-ne v7, v8, :cond_4

    .line 97
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    const/4 v9, -0x1

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/CircularButton;->setRippleColor(I)V

    goto :goto_1

    .line 98
    :cond_4
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_pressedButtonTranslationZ:I

    if-ne v7, v8, :cond_5

    .line 99
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/CircularButton;->setPressedTranslationZ(F)V

    goto :goto_1

    .line 100
    :cond_5
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_text:I

    if-ne v7, v8, :cond_6

    .line 101
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/ActionLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 102
    :cond_6
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_minTextSize:I

    if-ne v7, v8, :cond_7

    .line 103
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/4 v9, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v6, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v8, v9, v7}, Landroid/support/wearable/view/ActionLabel;->setMinTextSize(IF)V

    goto :goto_1

    .line 105
    :cond_7
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_maxTextSize:I

    if-ne v7, v8, :cond_8

    .line 106
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/4 v9, 0x0

    const/high16 v10, 0x42700000    # 60.0f

    invoke-virtual {v6, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    invoke-virtual {v8, v9, v7}, Landroid/support/wearable/view/ActionLabel;->setMaxTextSize(IF)V

    goto :goto_1

    .line 108
    :cond_8
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_textColor:I

    if-ne v7, v8, :cond_9

    .line 109
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/ActionLabel;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 110
    :cond_9
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_maxLines:I

    if-ne v7, v8, :cond_a

    .line 111
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/4 v9, 0x2

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/ActionLabel;->setMaxLines(I)V

    goto/16 :goto_1

    .line 112
    :cond_a
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_fontFamily:I

    if-ne v7, v8, :cond_b

    .line 113
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 114
    :cond_b
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_typeface:I

    if-ne v7, v8, :cond_c

    .line 115
    invoke-virtual {v6, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    goto/16 :goto_1

    .line 116
    :cond_c
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_textStyle:I

    if-ne v7, v8, :cond_d

    .line 117
    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    goto/16 :goto_1

    .line 118
    :cond_d
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_gravity:I

    if-ne v7, v8, :cond_e

    .line 119
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    const/16 v9, 0x11

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/ActionLabel;->setGravity(I)V

    goto/16 :goto_1

    .line 120
    :cond_e
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_lineSpacingExtra:I

    if-ne v7, v8, :cond_f

    .line 121
    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    goto/16 :goto_1

    .line 122
    :cond_f
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_lineSpacingMultiplier:I

    if-ne v7, v8, :cond_10

    .line 123
    invoke-virtual {v6, v7, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto/16 :goto_1

    .line 124
    :cond_10
    sget v8, Landroid/support/wearable/R$styleable;->ActionPage_android_stateListAnimator:I

    if-ne v7, v8, :cond_0

    .line 125
    iget-object v8, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-static {p1, v7}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/support/wearable/view/CircularButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/16 :goto_1

    .line 129
    :cond_11
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    iget-object v5, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v5, v3, v4}, Landroid/support/wearable/view/ActionLabel;->setLineSpacing(FF)V

    .line 131
    iget-object v3, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v3, v2, v1, v0}, Landroid/support/wearable/view/ActionLabel;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 132
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/ActionPage;->addView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/ActionPage;->addView(Landroid/view/View;)V

    .line 134
    return-void
.end method


# virtual methods
.method public getButton()Landroid/support/wearable/view/CircularButton;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    return-object v0
.end method

.method public getLabel()Landroid/support/wearable/view/ActionLabel;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .prologue
    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->mInsetsApplied:Z

    .line 302
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->mIsRound:Z

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->mIsRound:Z

    .line 304
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestLayout()V

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 307
    iget v1, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    if-eq v1, v0, :cond_1

    .line 308
    iput v0, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    .line 309
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestLayout()V

    .line 311
    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->mIsRound:Z

    if-eqz v0, :cond_2

    .line 313
    iget v0, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    int-to-float v0, v0

    const/high16 v1, 0x3dc00000    # 0.09375f

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    .line 316
    :cond_2
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 294
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->mInsetsApplied:Z

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestApplyInsets()V

    .line 297
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 321
    sub-int v0, p4, p2

    .line 322
    iget-object v1, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/wearable/view/CircularButton;->layout(IIII)V

    .line 328
    iget v1, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 329
    iget-object v1, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v2}, Landroid/support/wearable/view/CircularButton;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    add-int/2addr v3, v0

    iget-object v4, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v4}, Landroid/support/wearable/view/CircularButton;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/support/wearable/view/ActionPage;->mTextHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/support/wearable/view/ActionLabel;->layout(IIII)V

    .line 333
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 242
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 243
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredHeight()I

    move-result v0

    .line 244
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredWidth()I

    move-result v1

    .line 245
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v2}, Landroid/support/wearable/view/CircularButton;->getImageScaleMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v2}, Landroid/support/wearable/view/CircularButton;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 249
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 250
    iget-object v3, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/support/wearable/view/CircularButton;->measure(II)V

    .line 253
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v2}, Landroid/support/wearable/view/CircularButton;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v3}, Landroid/support/wearable/view/CircularButton;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    .line 256
    iget v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    .line 268
    :goto_0
    iget-boolean v2, p0, Landroid/support/wearable/view/ActionPage;->mIsRound:Z

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 272
    int-to-float v1, v1

    const/high16 v2, 0x3f200000    # 0.625f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    .line 273
    int-to-float v1, v0

    const/high16 v2, 0x3dc00000    # 0.09375f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    .line 280
    :goto_1
    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/support/wearable/view/ActionPage;->mBottomInset:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/ActionPage;->mTextHeight:I

    .line 282
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    iget v1, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/ActionPage;->mTextHeight:I

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/wearable/view/ActionLabel;->measure(II)V

    .line 289
    return-void

    .line 262
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    .line 263
    iget v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonRadius:F

    .line 264
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    iget v3, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v4, p0, Landroid/support/wearable/view/ActionPage;->mButtonSize:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/wearable/view/CircularButton;->measure(II)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->mButtonCenter:Landroid/graphics/Point;

    div-int/lit8 v3, v1, 0x2

    int-to-float v4, v0

    const v5, 0x3edc28f6    # 0.43f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 278
    int-to-float v1, v1

    const v2, 0x3f645a1d    # 0.892f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/wearable/view/ActionPage;->mTextWidth:I

    goto :goto_1
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setColor(I)V

    .line 162
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setColor(Landroid/content/res/ColorStateList;)V

    .line 169
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setEnabled(Z)V

    .line 238
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setImageResource(I)V

    .line 184
    return-void
.end method

.method public setImageScaleMode(I)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setImageScaleMode(I)V

    .line 199
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method

.method public setStateListAnimator(Landroid/animation/StateListAnimator;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mCircularButton:Landroid/support/wearable/view/CircularButton;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CircularButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 214
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->mLabel:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/ActionLabel;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method
