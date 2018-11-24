.class Landroid/support/wearable/view/CardFragment$1;
.super Ljava/lang/Object;
.source "CardFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/CardFragment;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/CardFragment;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-static {v0}, Landroid/support/wearable/view/CardFragment;->access$000(Landroid/support/wearable/view/CardFragment;)Landroid/support/wearable/view/CardScrollView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/CardScrollView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 373
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-static {v0}, Landroid/support/wearable/view/CardFragment;->access$100(Landroid/support/wearable/view/CardFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-static {v0, v1}, Landroid/support/wearable/view/CardFragment;->access$102(Landroid/support/wearable/view/CardFragment;Z)Z

    .line 375
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-virtual {v0}, Landroid/support/wearable/view/CardFragment;->scrollToTop()V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-static {v0}, Landroid/support/wearable/view/CardFragment;->access$200(Landroid/support/wearable/view/CardFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-static {v0, v1}, Landroid/support/wearable/view/CardFragment;->access$202(Landroid/support/wearable/view/CardFragment;Z)Z

    .line 378
    iget-object v0, p0, Landroid/support/wearable/view/CardFragment$1;->this$0:Landroid/support/wearable/view/CardFragment;

    invoke-virtual {v0}, Landroid/support/wearable/view/CardFragment;->scrollToBottom()V

    goto :goto_0
.end method
