.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$700(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    .line 495
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$800(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V

    .line 497
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$1100(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->notifyDataSetChanged()V

    .line 499
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$600(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V

    .line 501
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11$1;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 510
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$200(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    const-class v3, Lcom/dexcom/cgm/activities/share/InviteFollowersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 516
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$11;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->finish()V

    .line 518
    :cond_0
    return-void
.end method
