.class Landroid/support/wearable/view/GridViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "GridViewPager.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/GridViewPager;


# direct methods
.method private constructor <init>(Landroid/support/wearable/view/GridViewPager;)V
    .locals 0

    .prologue
    .line 2314
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager$PagerObserver;->this$0:Landroid/support/wearable/view/GridViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/GridViewPager;Landroid/support/wearable/view/GridViewPager$1;)V
    .locals 0

    .prologue
    .line 2314
    invoke-direct {p0, p1}, Landroid/support/wearable/view/GridViewPager$PagerObserver;-><init>(Landroid/support/wearable/view/GridViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager$PagerObserver;->this$0:Landroid/support/wearable/view/GridViewPager;

    invoke-static {v0}, Landroid/support/wearable/view/GridViewPager;->access$400(Landroid/support/wearable/view/GridViewPager;)V

    .line 2318
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2322
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager$PagerObserver;->this$0:Landroid/support/wearable/view/GridViewPager;

    invoke-static {v0}, Landroid/support/wearable/view/GridViewPager;->access$400(Landroid/support/wearable/view/GridViewPager;)V

    .line 2323
    return-void
.end method
