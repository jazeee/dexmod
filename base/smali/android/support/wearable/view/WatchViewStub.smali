.class public Landroid/support/wearable/view/WatchViewStub;
.super Landroid/widget/FrameLayout;
.source "WatchViewStub.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WatchViewStub"


# instance fields
.field private mInflateNeeded:Z

.field private mLastKnownRound:Z

.field private mListener:Landroid/support/wearable/view/WatchViewStub$OnLayoutInflatedListener;

.field private mRectLayout:I

.field private mRoundLayout:I

.field private mWindowInsetsApplied:Z

.field private mWindowOverscan:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WatchViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/WatchViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget-object v0, Landroid/support/wearable/R$styleable;->WatchViewStub:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    sget v1, Landroid/support/wearable/R$styleable;->WatchViewStub_rectLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WatchViewStub;->mRectLayout:I

    .line 65
    sget v1, Landroid/support/wearable/R$styleable;->WatchViewStub_roundLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WatchViewStub;->mRoundLayout:I

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/wearable/view/WatchViewStub;->mInflateNeeded:Z

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method private inflate()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/support/wearable/view/WatchViewStub;->removeAllViews()V

    .line 165
    iget v0, p0, Landroid/support/wearable/view/WatchViewStub;->mRoundLayout:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/WatchViewStub;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must supply a roundLayout resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/WatchViewStub;->mRectLayout:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/wearable/view/WatchViewStub;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must supply a rectLayout resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mLastKnownRound:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/wearable/view/WatchViewStub;->mRoundLayout:I

    .line 173
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WatchViewStub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mInflateNeeded:Z

    .line 175
    iget-object v0, p0, Landroid/support/wearable/view/WatchViewStub;->mListener:Landroid/support/wearable/view/WatchViewStub$OnLayoutInflatedListener;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Landroid/support/wearable/view/WatchViewStub;->mListener:Landroid/support/wearable/view/WatchViewStub$OnLayoutInflatedListener;

    invoke-interface {v0, p0}, Landroid/support/wearable/view/WatchViewStub$OnLayoutInflatedListener;->onLayoutInflated(Landroid/support/wearable/view/WatchViewStub;)V

    .line 178
    :cond_2
    return-void

    .line 172
    :cond_3
    iget v0, p0, Landroid/support/wearable/view/WatchViewStub;->mRectLayout:I

    goto :goto_0
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    iput-boolean v2, p0, Landroid/support/wearable/view/WatchViewStub;->mWindowInsetsApplied:Z

    .line 137
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    .line 138
    iget-boolean v1, p0, Landroid/support/wearable/view/WatchViewStub;->mLastKnownRound:Z

    if-eq v0, v1, :cond_0

    .line 139
    iput-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mLastKnownRound:Z

    .line 140
    iput-boolean v2, p0, Landroid/support/wearable/view/WatchViewStub;->mInflateNeeded:Z

    .line 142
    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mInflateNeeded:Z

    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0}, Landroid/support/wearable/view/WatchViewStub;->inflate()V

    .line 145
    :cond_1
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 113
    invoke-static {p0}, Landroid/support/wearable/view/Func;->getWindowOverscan(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mWindowOverscan:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mWindowInsetsApplied:Z

    .line 115
    invoke-virtual {p0}, Landroid/support/wearable/view/WatchViewStub;->requestApplyInsets()V

    .line 116
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mWindowOverscan:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mWindowInsetsApplied:Z

    if-nez v0, :cond_0

    .line 151
    const-string v0, "WatchViewStub"

    const-string v1, "onApplyWindowInsets was not called. WatchViewStub should be the the root of your layout. If an OnApplyWindowInsetsListener was attached to this view, it must forward the insets on by calling view.onApplyWindowInsets."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 157
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mInflateNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mWindowOverscan:Z

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Landroid/support/wearable/view/WatchViewStub;->inflate()V

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 132
    return-void
.end method

.method public setOnLayoutInflatedListener(Landroid/support/wearable/view/WatchViewStub$OnLayoutInflatedListener;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Landroid/support/wearable/view/WatchViewStub;->mListener:Landroid/support/wearable/view/WatchViewStub$OnLayoutInflatedListener;

    .line 82
    return-void
.end method

.method public setRectLayout(I)V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mInflateNeeded:Z

    if-nez v0, :cond_0

    .line 91
    const-string v0, "WatchViewStub"

    const-string v1, "Views have already been inflated. setRectLayout will have no effect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/WatchViewStub;->mRectLayout:I

    goto :goto_0
.end method

.method public setRoundLayout(I)V
    .locals 2

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/support/wearable/view/WatchViewStub;->mInflateNeeded:Z

    if-nez v0, :cond_0

    .line 104
    const-string v0, "WatchViewStub"

    const-string v1, "Views have already been inflated. setRoundLayout will have no effect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/WatchViewStub;->mRoundLayout:I

    goto :goto_0
.end method
