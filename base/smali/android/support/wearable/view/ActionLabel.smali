.class public Landroid/support/wearable/view/ActionLabel;
.super Landroid/view/View;
.source "ActionLabel.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MAX_TEXT_SIZE:I = 0x3c

.field static final MIN_TEXT_SIZE:I = 0xa

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActionLabel"


# instance fields
.field private mCurTextColor:I

.field private mCurrentTextSize:F

.field private mDrawMaxLines:I

.field private mGravity:I

.field private mLayout:Landroid/text/Layout;

.field private mLineSpacingAdd:F

.field private mLineSpacingMult:F

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/ActionLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/ActionLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/ActionLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    const v0, 0x800033

    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    .line 89
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    .line 108
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 109
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 110
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 111
    div-float v1, v0, v1

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextScaleFactor:F

    .line 112
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    .line 113
    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    .line 114
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 117
    sget-object v1, Landroid/support/wearable/R$styleable;->ActionLabel:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    sget v1, Landroid/support/wearable/R$styleable;->ActionLabel_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    .line 122
    sget v1, Landroid/support/wearable/R$styleable;->ActionLabel_minTextSize:I

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    .line 123
    sget v1, Landroid/support/wearable/R$styleable;->ActionLabel_maxTextSize:I

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    .line 124
    sget v1, Landroid/support/wearable/R$styleable;->ActionLabel_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    .line 125
    sget v1, Landroid/support/wearable/R$styleable;->ActionLabel_android_maxLines:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    .line 126
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->updateTextColors()V

    .line 129
    :cond_0
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 131
    sget v1, Landroid/support/wearable/R$styleable;->ActionLabel_android_fontFamily:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    sget v2, Landroid/support/wearable/R$styleable;->ActionLabel_android_typeface:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 133
    sget v3, Landroid/support/wearable/R$styleable;->ActionLabel_android_textStyle:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 134
    invoke-virtual {p0, v1, v2, v3}, Landroid/support/wearable/view/ActionLabel;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    .line 136
    sget v1, Landroid/support/wearable/R$styleable;->ActionLabel_android_gravity:I

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    .line 138
    sget v1, Landroid/support/wearable/R$styleable;->ActionLabel_android_lineSpacingExtra:I

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mLineSpacingAdd:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mLineSpacingAdd:F

    .line 140
    sget v1, Landroid/support/wearable/R$styleable;->ActionLabel_android_lineSpacingMultiplier:I

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mLineSpacingMult:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mLineSpacingMult:F

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 145
    const-string v0, ""

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    .line 147
    :cond_1
    return-void
.end method

.method private getAvailableHeight()I
    .locals 3

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getTextAlignment()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 475
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 478
    :goto_0
    return-object v0

    .line 444
    :pswitch_0
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    const v1, 0x800007

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 461
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 446
    :sswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 449
    :sswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 452
    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 455
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 458
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 466
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 469
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 472
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 444
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeNewLayout(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 569
    if-lez p2, :cond_0

    if-gtz p1, :cond_1

    .line 570
    :cond_0
    const/4 v0, 0x0

    .line 620
    :goto_0
    return-object v0

    .line 576
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v9, p2, v0

    .line 577
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v3, p1, v0

    .line 580
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    .line 581
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 585
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    iget v6, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 587
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    if-le v1, v2, :cond_4

    move v1, v7

    .line 588
    :goto_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    if-le v2, v9, :cond_5

    move v2, v7

    .line 589
    :goto_2
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    iget v5, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    move v4, v7

    .line 591
    :goto_3
    if-nez v1, :cond_2

    if-eqz v2, :cond_a

    .line 592
    :cond_2
    :goto_4
    if-nez v1, :cond_3

    if-eqz v2, :cond_a

    :cond_3
    if-eqz v4, :cond_a

    .line 593
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    .line 594
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 595
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v5, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    iget v6, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 601
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    if-le v1, v9, :cond_7

    move v1, v7

    .line 602
    :goto_5
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    iget v4, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    if-le v2, v4, :cond_8

    move v2, v7

    .line 603
    :goto_6
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    iget v5, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    move v4, v7

    :goto_7
    move v10, v1

    move v1, v2

    move v2, v10

    .line 604
    goto :goto_4

    :cond_4
    move v1, v8

    .line 587
    goto :goto_1

    :cond_5
    move v2, v8

    .line 588
    goto :goto_2

    :cond_6
    move v4, v8

    .line 589
    goto :goto_3

    :cond_7
    move v1, v8

    .line 601
    goto :goto_5

    :cond_8
    move v2, v8

    .line 602
    goto :goto_6

    :cond_9
    move v4, v8

    .line 603
    goto :goto_7

    .line 619
    :cond_a
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/ActionLabel;->mDrawMaxLines:I

    goto/16 :goto_0
.end method

.method private updateTextColors()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 421
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mCurTextColor:I

    if-eq v0, v1, :cond_0

    .line 422
    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mCurTextColor:I

    .line 424
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 426
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 414
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->updateTextColors()V

    .line 417
    :cond_0
    return-void
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mCurTextColor:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    return v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method getVerticalOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->getAvailableHeight()I

    move-result v1

    .line 629
    iget-object v2, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    iget v3, p0, Landroid/support/wearable/view/ActionLabel;->mDrawMaxLines:I

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 630
    iget v3, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 632
    sparse-switch v3, :sswitch_data_0

    .line 646
    :goto_0
    :sswitch_0
    return v0

    .line 637
    :sswitch_1
    sub-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 640
    :sswitch_2
    sub-int v0, v1, v2

    .line 641
    goto :goto_0

    .line 632
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 651
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 652
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 654
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mCurTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 655
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 656
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 658
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    iget v2, p0, Landroid/support/wearable/view/ActionLabel;->mDrawMaxLines:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 661
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 662
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 664
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    .line 483
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 484
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 485
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 486
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 487
    const/4 v0, -0x1

    .line 488
    const/4 v1, -0x1

    .line 489
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v6, :cond_0

    move v0, v3

    .line 493
    :cond_0
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    move v1, v2

    .line 497
    :cond_1
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 502
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v6, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 503
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 504
    iget-object v6, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    iget v7, p0, Landroid/support/wearable/view/ActionLabel;->mCurrentTextSize:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 508
    :cond_2
    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_3

    .line 509
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 512
    :cond_3
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 514
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 517
    const/high16 v1, -0x80000000

    if-ne v5, v1, :cond_7

    move v1, v2

    .line 521
    :cond_4
    :goto_0
    iget-object v3, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_5

    .line 524
    iget-object v3, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-eq v3, v0, :cond_8

    const/4 v3, 0x1

    .line 525
    :goto_1
    iget-object v4, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    if-eq v4, v1, :cond_9

    const/4 v4, 0x1

    .line 526
    :goto_2
    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    .line 527
    :cond_5
    invoke-direct {p0, v0, v1, v6}, Landroid/support/wearable/view/ActionLabel;->makeNewLayout(IILandroid/text/Layout$Alignment;)Landroid/text/Layout;

    move-result-object v3

    iput-object v3, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 534
    :cond_6
    iget-object v3, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_a

    .line 535
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/view/ActionLabel;->setMeasuredDimension(II)V

    .line 553
    :goto_3
    return-void

    .line 517
    :cond_7
    const v1, 0x7fffffff

    goto :goto_0

    .line 524
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 525
    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    .line 540
    :cond_a
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v5, v3, :cond_b

    .line 542
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 548
    :cond_b
    const/high16 v3, -0x80000000

    if-ne v5, v3, :cond_c

    .line 549
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 552
    :cond_c
    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/view/ActionLabel;->setMeasuredDimension(II)V

    goto :goto_3
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 432
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 433
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 434
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 397
    iput p1, p0, Landroid/support/wearable/view/ActionLabel;->mGravity:I

    .line 398
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 400
    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingAdd:F

    .line 294
    iput p2, p0, Landroid/support/wearable/view/ActionLabel;->mSpacingMult:F

    .line 296
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 298
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 299
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 302
    :cond_1
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    if-eq v0, p1, :cond_0

    .line 382
    iput p1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxLines:I

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 384
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 385
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 387
    :cond_0
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/ActionLabel;->setMaxTextSize(IF)V

    .line 192
    return-void
.end method

.method public setMaxTextSize(IF)V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 201
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 203
    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mMaxTextSize:F

    .line 204
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 205
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 207
    :cond_0
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/ActionLabel;->setMinTextSize(IF)V

    .line 169
    return-void
.end method

.method public setMinTextSize(IF)V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 178
    iget v1, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 180
    iput v0, p0, Landroid/support/wearable/view/ActionLabel;->mMinTextSize:F

    .line 181
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 182
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 184
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    .line 155
    iput-object p1, p0, Landroid/support/wearable/view/ActionLabel;->mText:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 157
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 159
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 333
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    .line 334
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->updateTextColors()V

    .line 335
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 348
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/ActionLabel;->mTextColor:Landroid/content/res/ColorStateList;

    .line 349
    invoke-direct {p0}, Landroid/support/wearable/view/ActionLabel;->updateTextColors()V

    .line 350
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 220
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->requestLayout()V

    .line 222
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionLabel;->invalidate()V

    .line 225
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 233
    if-lez p2, :cond_4

    .line 234
    if-nez p1, :cond_1

    .line 235
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 240
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/ActionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 243
    :goto_1
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    .line 244
    iget-object v3, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 245
    iget-object v1, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 251
    :goto_3
    return-void

    .line 237
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 242
    goto :goto_1

    :cond_3
    move v0, v2

    .line 245
    goto :goto_2

    .line 247
    :cond_4
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 248
    iget-object v0, p0, Landroid/support/wearable/view/ActionLabel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 249
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/ActionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    if-eqz p1, :cond_0

    .line 264
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/ActionLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 285
    :goto_0
    return-void

    .line 270
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 284
    :goto_1
    invoke-virtual {p0, v0, p3}, Landroid/support/wearable/view/ActionLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 272
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    .line 276
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    .line 280
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
