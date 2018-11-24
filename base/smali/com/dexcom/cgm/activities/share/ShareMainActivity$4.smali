.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$4;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$200(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 155
    :goto_0
    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_share_max_followers:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$300(Lcom/dexcom/cgm/activities/share/ShareMainActivity;I)V

    .line 164
    :goto_1
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    const-class v3, Lcom/dexcom/cgm/activities/share/FollowerInvitationNameAndEmailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
