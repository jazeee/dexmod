.class public Landroid/support/wearable/view/CardFragment;
.super Landroid/app/Fragment;
.source "CardFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final CONTENT_SAVED_STATE:Ljava/lang/String; = "CardScrollView_content"

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_UP:I = -0x1

.field public static final KEY_ICON_RESOURCE:Ljava/lang/String; = "CardFragment_icon"

.field public static final KEY_TEXT:Ljava/lang/String; = "CardFragment_text"

.field public static final KEY_TITLE:Ljava/lang/String; = "CardFragment_title"


# instance fields
.field private mActivityCreated:Z

.field private mCard:Landroid/support/wearable/view/CardFrame;

.field private mCardGravity:I

.field private final mCardMargins:Landroid/graphics/Rect;

.field private mCardPadding:Landroid/graphics/Rect;

.field private mCardScroll:Landroid/support/wearable/view/CardScrollView;

.field private mExpansionDirection:I

.field private mExpansionEnabled:Z

.field private mExpansionFactor:F

.field private mScrollToBottom:Z

.field private mScrollToTop:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/wearable/view/CardFragment;->mCardGravity:I

    .line 84
    iput-boolean v2, p0, Landroid/support/wearable/view/CardFragment;->mExpansionEnabled:Z

    .line 86
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/support/wearable/view/CardFragment;->mExpansionFactor:F

    .line 87
    iput v2, p0, Landroid/support/wearable/view/CardFragment;->mExpansionDirection:I

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/CardFragment;)Landroid/support/wearable/view/CardScrollView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/wearable/view/CardFragment;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mScrollToTop:Z

    return v0
.end method

.method static synthetic access$102(Landroid/support/wearable/view/CardFragment;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/support/wearable/view/CardFragment;->mScrollToTop:Z

    return p1
.end method

.method static synthetic access$200(Landroid/support/wearable/view/CardFragment;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mScrollToBottom:Z

    return v0
.end method

.method static synthetic access$202(Landroid/support/wearable/view/CardFragment;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Landroid/support/wearable/view/CardFragment;->mScrollToBottom:Z

    return p1
.end method

.method private applyCardGravity()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    iget v1, p0, Landroid/support/wearable/view/CardFragment;->mCardGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 138
    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v1, v0}, Landroid/support/wearable/view/CardFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    return-void
.end method

.method private applyCardMargins()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 205
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0}, Landroid/support/wearable/view/CardFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 206
    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 207
    :cond_0
    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 208
    :cond_1
    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 209
    :cond_2
    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 210
    :cond_3
    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v1, v0}, Landroid/support/wearable/view/CardFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    return-void
.end method

.method private applyPadding()V
    .locals 5

    .prologue
    .line 214
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/wearable/view/CardFrame;->setContentPadding(IIII)V

    .line 218
    :cond_0
    return-void
.end method

.method public static create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/support/wearable/view/CardFragment;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/wearable/view/CardFragment;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/support/wearable/view/CardFragment;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/support/wearable/view/CardFragment;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/support/wearable/view/CardFragment;

    invoke-direct {v0}, Landroid/support/wearable/view/CardFragment;-><init>()V

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 66
    if-eqz p0, :cond_0

    .line 67
    const-string v2, "CardFragment_title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    .line 70
    const-string v2, "CardFragment_text"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    if-eqz p2, :cond_2

    .line 73
    const-string v2, "CardFragment_icon"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 76
    return-object v0
.end method


# virtual methods
.method public getContentPadding()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mActivityCreated:Z

    .line 400
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyCardMargins()V

    .line 401
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyCardGravity()V

    .line 402
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 425
    sget v0, Landroid/support/wearable/R$layout;->watch_card_content:I

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 426
    invoke-virtual {p0}, Landroid/support/wearable/view/CardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 427
    if-eqz v3, :cond_2

    .line 428
    sget v0, Landroid/support/wearable/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 429
    const-string v1, "CardFragment_title"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    if-eqz v0, :cond_0

    .line 431
    const-string v1, "CardFragment_title"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_0
    const-string v1, "CardFragment_text"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    sget v1, Landroid/support/wearable/R$id;->text:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    if-eqz v1, :cond_1

    .line 437
    const-string v4, "CardFragment_text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_1
    const-string v1, "CardFragment_icon"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    if-eqz v0, :cond_2

    .line 442
    const-string v1, "CardFragment_icon"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 447
    :cond_2
    return-object v2
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 349
    new-instance v0, Landroid/support/wearable/view/CardScrollView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/wearable/view/CardScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    .line 350
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    new-instance v0, Landroid/support/wearable/view/CardFrame;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/wearable/view/CardFrame;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    .line 354
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    iget v3, p0, Landroid/support/wearable/view/CardFragment;->mCardGravity:I

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    iget-boolean v1, p0, Landroid/support/wearable/view/CardFragment;->mExpansionEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardFrame;->setExpansionEnabled(Z)V

    .line 360
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    iget v1, p0, Landroid/support/wearable/view/CardFragment;->mExpansionFactor:F

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardFrame;->setExpansionFactor(F)V

    .line 361
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    iget v1, p0, Landroid/support/wearable/view/CardFragment;->mExpansionDirection:I

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardFrame;->setExpansionDirection(I)V

    .line 362
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyPadding()V

    .line 365
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardScrollView;->addView(Landroid/view/View;)V

    .line 367
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mScrollToTop:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mScrollToBottom:Z

    if-eqz v0, :cond_2

    .line 368
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    new-instance v1, Landroid/support/wearable/view/CardFragment$1;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/CardFragment$1;-><init>(Landroid/support/wearable/view/CardFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 384
    :cond_2
    const/4 v0, 0x0

    .line 385
    if-eqz p3, :cond_3

    .line 386
    const-string v0, "CardScrollView_content"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 389
    :cond_3
    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/wearable/view/CardFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_4

    .line 391
    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v1, v0}, Landroid/support/wearable/view/CardFrame;->addView(Landroid/view/View;)V

    .line 393
    :cond_4
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mActivityCreated:Z

    .line 407
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 408
    return-void
.end method

.method public scrollToBottom()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    invoke-virtual {v1, v3}, Landroid/support/wearable/view/CardScrollView;->getAvailableScrollDelta(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/support/wearable/view/CardScrollView;->scrollBy(II)V

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_0
    iput-boolean v3, p0, Landroid/support/wearable/view/CardFragment;->mScrollToTop:Z

    .line 341
    iput-boolean v2, p0, Landroid/support/wearable/view/CardFragment;->mScrollToBottom:Z

    goto :goto_0
.end method

.method public scrollToTop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    iget-object v1, p0, Landroid/support/wearable/view/CardFragment;->mCardScroll:Landroid/support/wearable/view/CardScrollView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/CardScrollView;->getAvailableScrollDelta(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/support/wearable/view/CardScrollView;->scrollBy(II)V

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mScrollToTop:Z

    .line 329
    iput-boolean v3, p0, Landroid/support/wearable/view/CardFragment;->mScrollToBottom:Z

    goto :goto_0
.end method

.method public setCardGravity(I)V
    .locals 1

    .prologue
    .line 129
    and-int/lit8 v0, p1, 0x70

    iput v0, p0, Landroid/support/wearable/view/CardFragment;->mCardGravity:I

    .line 130
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mActivityCreated:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyCardGravity()V

    .line 133
    :cond_0
    return-void
.end method

.method public setCardMarginBottom(I)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 199
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mActivityCreated:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyCardMargins()V

    .line 202
    :cond_0
    return-void
.end method

.method public setCardMarginLeft(I)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 175
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mActivityCreated:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyCardMargins()V

    .line 178
    :cond_0
    return-void
.end method

.method public setCardMarginRight(I)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 187
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mActivityCreated:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyCardMargins()V

    .line 190
    :cond_0
    return-void
.end method

.method public setCardMarginTop(I)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 163
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mActivityCreated:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyCardMargins()V

    .line 166
    :cond_0
    return-void
.end method

.method public setCardMargins(IIII)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardMargins:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 151
    iget-boolean v0, p0, Landroid/support/wearable/view/CardFragment;->mActivityCreated:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyCardMargins()V

    .line 154
    :cond_0
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    .line 230
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyPadding()V

    .line 231
    return-void
.end method

.method public setContentPaddingBottom(I)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 297
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyPadding()V

    .line 298
    return-void
.end method

.method public setContentPaddingLeft(I)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 248
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyPadding()V

    .line 249
    return-void
.end method

.method public setContentPaddingRight(I)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 280
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyPadding()V

    .line 281
    return-void
.end method

.method public setContentPaddingTop(I)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCardPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 263
    invoke-direct {p0}, Landroid/support/wearable/view/CardFragment;->applyPadding()V

    .line 264
    return-void
.end method

.method public setExpansionDirection(I)V
    .locals 2

    .prologue
    .line 116
    iput p1, p0, Landroid/support/wearable/view/CardFragment;->mExpansionDirection:I

    .line 117
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    iget v1, p0, Landroid/support/wearable/view/CardFragment;->mExpansionDirection:I

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardFrame;->setExpansionDirection(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public setExpansionEnabled(Z)V
    .locals 2

    .prologue
    .line 103
    iput-boolean p1, p0, Landroid/support/wearable/view/CardFragment;->mExpansionEnabled:Z

    .line 104
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    iget-boolean v1, p0, Landroid/support/wearable/view/CardFragment;->mExpansionEnabled:Z

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/CardFrame;->setExpansionEnabled(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method public setExpansionFactor(F)V
    .locals 1

    .prologue
    .line 315
    iput p1, p0, Landroid/support/wearable/view/CardFragment;->mExpansionFactor:F

    .line 316
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment;->mCard:Landroid/support/wearable/view/CardFrame;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/CardFrame;->setExpansionFactor(F)V

    .line 319
    :cond_0
    return-void
.end method
