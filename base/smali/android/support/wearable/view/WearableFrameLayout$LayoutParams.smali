.class public Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "WearableFrameLayout.java"


# instance fields
.field public bottomMarginRound:I

.field public gravityRound:I

.field public heightRound:I

.field public leftMarginRound:I

.field public rightMarginRound:I

.field public topMarginRound:I

.field public widthRound:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 828
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 829
    iput p1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 830
    iput p2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 831
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 818
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 819
    iput p1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 820
    iput p2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 821
    iput p3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 822
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    .prologue
    .line 808
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 809
    iput p4, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 810
    iput p5, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 811
    iput p6, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 812
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 763
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 749
    iput v3, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 764
    sget-object v0, Landroid/support/wearable/R$styleable;->WearableFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 765
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_gravityRound:I

    iget v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 767
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_widthRound:I

    iget v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 769
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_heightRound:I

    iget v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 771
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginRound:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 773
    if-ltz v1, :cond_0

    .line 774
    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    .line 786
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 787
    return-void

    .line 777
    :cond_0
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginLeftRound:I

    iget v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    .line 779
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginTopRound:I

    iget v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    .line 781
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginRightRound:I

    iget v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    .line 783
    sget v1, Landroid/support/wearable/R$styleable;->WearableFrameLayout_layout_marginBottomRound:I

    iget v2, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;)V
    .locals 1

    .prologue
    .line 837
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 749
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 838
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->widthRound:I

    .line 839
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->heightRound:I

    .line 840
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->gravityRound:I

    .line 841
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->leftMarginRound:I

    .line 842
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->topMarginRound:I

    .line 843
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->rightMarginRound:I

    .line 844
    iget v0, p1, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    iput v0, p0, Landroid/support/wearable/view/WearableFrameLayout$LayoutParams;->bottomMarginRound:I

    .line 845
    return-void
.end method
