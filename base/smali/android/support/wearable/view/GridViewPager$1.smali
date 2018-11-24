.class Landroid/support/wearable/view/GridViewPager$1;
.super Ljava/lang/Object;
.source "GridViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/GridViewPager;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/GridViewPager;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Landroid/support/wearable/view/GridViewPager$1;->this$0:Landroid/support/wearable/view/GridViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager$1;->this$0:Landroid/support/wearable/view/GridViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/wearable/view/GridViewPager;->access$000(Landroid/support/wearable/view/GridViewPager;I)V

    .line 93
    iget-object v0, p0, Landroid/support/wearable/view/GridViewPager$1;->this$0:Landroid/support/wearable/view/GridViewPager;

    invoke-static {v0}, Landroid/support/wearable/view/GridViewPager;->access$100(Landroid/support/wearable/view/GridViewPager;)V

    .line 94
    return-void
.end method
