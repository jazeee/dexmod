.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$700(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Lcom/dexcom/cgm/model/Follower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->hasTrendPermission()Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$800(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$900(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 222
    new-instance v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;

    invoke-direct {v0, p0, p2}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;Z)V

    .line 239
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
