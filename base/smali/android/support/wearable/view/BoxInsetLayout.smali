.class public Landroid/support/wearable/view/BoxInsetLayout;
.super Landroid/widget/FrameLayout;
.source "BoxInsetLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033

.field private static FACTOR:F


# instance fields
.field private mForegroundPadding:Landroid/graphics/Rect;

.field private mInsets:Landroid/graphics/Rect;

.field private mLastKnownRound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const v0, 0x3e15fb72    # 0.146467f

    sput v0, Landroid/support/wearable/view/BoxInsetLayout;->FACTOR:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    .line 50
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    .line 53
    :cond_1
    return-void
.end method

.method private measureChild(IIII)V
    .locals 17

    .prologue
    .line 166
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 167
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    .line 169
    iget v3, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->gravity:I

    .line 170
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 171
    const v3, 0x800033

    .line 173
    :cond_0
    and-int/lit8 v9, v3, 0x70

    .line 174
    and-int/lit8 v10, v3, 0x7

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int v11, v3, v4

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingRight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int v12, v3, v4

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingTop()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v13, v3, v4

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingBottom()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v14, v3, v4

    .line 184
    const/4 v4, 0x0

    .line 186
    const/4 v3, 0x0

    .line 187
    const/4 v5, 0x0

    .line 188
    const/4 v7, 0x0

    .line 189
    const/4 v6, 0x0

    .line 192
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v15, :cond_6

    iget v15, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_6

    .line 193
    iget v11, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->width:I

    const/4 v15, -0x1

    if-eq v11, v15, :cond_1

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    :cond_1
    move/from16 v3, p3

    .line 199
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v11, :cond_7

    iget v11, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_7

    .line 200
    iget v11, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->width:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    const/4 v11, 0x5

    if-ne v10, v11, :cond_c

    :cond_3
    move v5, v4

    move/from16 v4, p3

    .line 206
    :goto_1
    iget v10, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v5, v10}, Landroid/support/wearable/view/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 209
    const/4 v5, 0x0

    .line 210
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v11, :cond_8

    iget v11, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_8

    .line 211
    iget v11, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    const/16 v11, 0x30

    if-ne v9, v11, :cond_b

    :cond_4
    move v6, v5

    move/from16 v5, p3

    .line 217
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v11, :cond_9

    iget v11, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_9

    .line 218
    iget v11, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    const/16 v11, 0x50

    if-ne v9, v11, :cond_a

    .line 225
    :cond_5
    :goto_3
    iget v2, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v6, v2}, Landroid/support/wearable/view/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 226
    move/from16 v0, p3

    invoke-virtual {v8, v3, v5, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 227
    invoke-virtual {v8, v10, v2}, Landroid/view/View;->measure(II)V

    .line 228
    return-void

    .line 197
    :cond_6
    iget v4, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v11

    add-int/lit8 v4, v4, 0x0

    goto :goto_0

    .line 204
    :cond_7
    iget v10, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    add-int/2addr v10, v12

    add-int/2addr v4, v10

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    goto :goto_1

    .line 215
    :cond_8
    iget v5, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v13

    add-int/lit8 v5, v5, 0x0

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    goto :goto_2

    .line 222
    :cond_9
    iget v9, v2, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v14

    add-int/2addr v6, v9

    move/from16 p3, v7

    goto :goto_3

    :cond_a
    move/from16 p3, v7

    goto :goto_3

    :cond_b
    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    goto :goto_2

    :cond_c
    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    goto :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 333
    instance-of v0, p1, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;
    .locals 2

    .prologue
    .line 343
    new-instance v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/BoxInsetLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/BoxInsetLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isRound()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    .line 65
    iget-boolean v2, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eq v1, v2, :cond_0

    .line 66
    iput-boolean v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    .line 67
    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->requestLayout()V

    .line 69
    :cond_0
    iget-object v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 58
    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->requestApplyInsets()V

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->getChildCount()I

    move-result v3

    .line 235
    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int v4, v0, v1

    .line 236
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v0, v1

    .line 238
    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int v6, v0, v1

    .line 239
    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 241
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_7

    .line 242
    invoke-virtual {p0, v2}, Landroid/support/wearable/view/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 243
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 244
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    .line 246
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 247
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 252
    iget v1, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->gravity:I

    .line 253
    const/4 v11, -0x1

    if-ne v1, v11, :cond_0

    .line 254
    const v1, 0x800033

    .line 257
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/BoxInsetLayout;->getLayoutDirection()I

    move-result v11

    .line 258
    invoke-static {v1, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    .line 259
    and-int/lit8 v12, v1, 0x70

    .line 263
    iget v1, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->width:I

    const/4 v13, -0x1

    if-eq v1, v13, :cond_4

    .line 266
    and-int/lit8 v1, v11, 0x7

    sparse-switch v1, :sswitch_data_0

    .line 281
    iget-boolean v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 282
    const/4 v1, 0x0

    .line 292
    :goto_1
    iget v11, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->height:I

    const/4 v13, -0x1

    if-eq v11, v13, :cond_1

    .line 295
    sparse-switch v12, :sswitch_data_1

    .line 315
    :cond_1
    iget v0, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    .line 318
    :goto_2
    add-int/2addr v9, v1

    add-int/2addr v10, v0

    invoke-virtual {v8, v1, v0, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 241
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 268
    :sswitch_0
    sub-int v1, v5, v4

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    iget v11, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v11

    iget v11, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v11

    .line 270
    goto :goto_1

    .line 272
    :sswitch_1
    iget-boolean v1, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 274
    sub-int v1, p4, p2

    sub-int/2addr v1, v9

    goto :goto_1

    .line 276
    :cond_3
    sub-int v1, v5, v9

    iget v11, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v11

    .line 278
    goto :goto_1

    .line 284
    :cond_4
    iget v1, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 297
    :sswitch_2
    iget-boolean v11, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v11, :cond_5

    iget v11, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_5

    .line 298
    const/4 v0, 0x0

    goto :goto_2

    .line 300
    :cond_5
    iget v0, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    .line 302
    goto :goto_2

    .line 304
    :sswitch_3
    sub-int v11, v7, v6

    sub-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v6

    iget v12, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    .line 306
    goto :goto_2

    .line 308
    :sswitch_4
    iget-boolean v11, p0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v11, :cond_6

    iget v11, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_6

    .line 309
    sub-int v0, p5, p3

    sub-int/2addr v0, v10

    goto :goto_2

    .line 311
    :cond_6
    sub-int v11, v7, v10

    iget v0, v0, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    .line 313
    goto :goto_2

    .line 321
    :cond_7
    return-void

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 295
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 18

    .prologue
    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getChildCount()I

    move-result v17

    .line 96
    const/4 v15, 0x0

    .line 97
    const/4 v14, 0x0

    .line 98
    const/4 v13, 0x0

    .line 99
    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 100
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8

    .line 102
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;

    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/support/wearable/view/BoxInsetLayout;->mLastKnownRound:Z

    if-eqz v9, :cond_3

    .line 109
    iget v9, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_0

    .line 110
    iget v5, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    .line 112
    :cond_0
    iget v9, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_1

    .line 113
    iget v6, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    .line 115
    :cond_1
    iget v9, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_2

    .line 116
    iget v7, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    .line 118
    :cond_2
    iget v9, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->boxedEdges:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_7

    .line 119
    iget v3, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    move v9, v3

    move v10, v7

    move v11, v6

    move v12, v5

    .line 128
    :goto_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/support/wearable/view/BoxInsetLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 129
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 131
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v10

    add-int/2addr v3, v9

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v13, v3}, Landroid/support/wearable/view/BoxInsetLayout;->combineMeasuredStates(II)I

    move-result v3

    move v4, v5

    move v5, v6

    .line 99
    :goto_2
    add-int/lit8 v6, v16, 0x1

    move/from16 v16, v6

    move v13, v3

    move v14, v4

    move v15, v5

    goto :goto_0

    .line 123
    :cond_3
    iget v5, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->leftMargin:I

    .line 124
    iget v7, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->topMargin:I

    .line 125
    iget v6, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->rightMargin:I

    .line 126
    iget v3, v3, Landroid/support/wearable/view/BoxInsetLayout$LayoutParams;->bottomMargin:I

    move v9, v3

    move v10, v7

    move v11, v6

    move v12, v5

    goto :goto_1

    .line 137
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int v4, v15, v3

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingTop()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v5

    add-int/2addr v3, v14

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 148
    if-eqz v5, :cond_5

    .line 149
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 150
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 153
    :cond_5
    move/from16 v0, p1

    invoke-static {v4, v0, v13}, Landroid/support/wearable/view/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v4

    shl-int/lit8 v5, v13, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/support/wearable/view/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/support/wearable/view/BoxInsetLayout;->setMeasuredDimension(II)V

    .line 158
    sget v3, Landroid/support/wearable/view/BoxInsetLayout;->FACTOR:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/BoxInsetLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v4, v3

    .line 160
    const/4 v3, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v3, v0, :cond_6

    .line 161
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/support/wearable/view/BoxInsetLayout;->measureChild(IIII)V

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 163
    :cond_6
    return-void

    :cond_7
    move v9, v8

    move v10, v7

    move v11, v6

    move v12, v5

    goto/16 :goto_1

    :cond_8
    move v3, v13

    move v4, v14

    move v5, v15

    goto/16 :goto_2
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 325
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    .line 328
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/BoxInsetLayout;->mForegroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 329
    return-void
.end method
