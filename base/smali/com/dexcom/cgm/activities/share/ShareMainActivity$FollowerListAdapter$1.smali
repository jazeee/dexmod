.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter$1;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

.field final synthetic val$follower:Lcom/dexcom/cgm/model/Follower;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;Lcom/dexcom/cgm/model/Follower;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter$1;->this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter$1;->val$follower:Lcom/dexcom/cgm/model/Follower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 639
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter$1;->this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    const-class v2, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    const-string v1, "subscriptionID"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter$1;->val$follower:Lcom/dexcom/cgm/model/Follower;

    .line 642
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/Follower;->getSubscriptionID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter$1;->this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$FollowerListAdapter;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 644
    return-void
.end method
