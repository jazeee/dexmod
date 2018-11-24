.class public Landroid/support/wearable/view/WearableHeaderTextView;
.super Landroid/widget/TextView;
.source "WearableHeaderTextView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WearableHeaderTextView"


# instance fields
.field private mCircularLayoutGravity:I

.field private mCircularTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableHeaderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/WearableHeaderTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v2, p0, Landroid/support/wearable/view/WearableHeaderTextView;->mCircularTextSize:I

    .line 27
    iput v2, p0, Landroid/support/wearable/view/WearableHeaderTextView;->mCircularLayoutGravity:I

    .line 39
    sget-object v0, Landroid/support/wearable/R$styleable;->WearableHeaderTextView:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    sget v1, Landroid/support/wearable/R$styleable;->WearableHeaderTextView_circular_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableHeaderTextView;->mCircularLayoutGravity:I

    .line 43
    sget v1, Landroid/support/wearable/R$styleable;->WearableHeaderTextView_circular_text_size:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableHeaderTextView;->mCircularTextSize:I

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return-void
.end method

.method private applyCircularStyles()V
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Landroid/support/wearable/view/WearableHeaderTextView;->mCircularLayoutGravity:I

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableHeaderTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    iget v1, p0, Landroid/support/wearable/view/WearableHeaderTextView;->mCircularLayoutGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 62
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableHeaderTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/WearableHeaderTextView;->mCircularTextSize:I

    if-eqz v0, :cond_1

    .line 66
    iget v0, p0, Landroid/support/wearable/view/WearableHeaderTextView;->mCircularTextSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableHeaderTextView;->setTextSize(F)V

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/TextView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0}, Landroid/support/wearable/view/WearableHeaderTextView;->applyCircularStyles()V

    .line 53
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableHeaderTextView;->requestLayout()V

    .line 55
    :cond_0
    return-object v0
.end method
