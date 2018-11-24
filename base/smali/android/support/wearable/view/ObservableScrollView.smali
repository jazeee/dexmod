.class public Landroid/support/wearable/view/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# instance fields
.field private mOnScrollListener:Landroid/support/wearable/view/ObservableScrollView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 26
    iget-object v0, p0, Landroid/support/wearable/view/ObservableScrollView;->mOnScrollListener:Landroid/support/wearable/view/ObservableScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Landroid/support/wearable/view/ObservableScrollView;->mOnScrollListener:Landroid/support/wearable/view/ObservableScrollView$OnScrollListener;

    sub-int v1, p4, p2

    int-to-float v1, v1

    invoke-interface {v0, v1}, Landroid/support/wearable/view/ObservableScrollView$OnScrollListener;->onScroll(F)V

    .line 29
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Landroid/support/wearable/view/ObservableScrollView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Landroid/support/wearable/view/ObservableScrollView;->mOnScrollListener:Landroid/support/wearable/view/ObservableScrollView$OnScrollListener;

    .line 33
    return-void
.end method
