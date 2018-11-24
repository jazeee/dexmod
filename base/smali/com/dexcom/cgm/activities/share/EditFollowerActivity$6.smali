.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$6;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$6;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$6;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->trend_graph_access_switch:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 313
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$6;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$700(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Lcom/dexcom/cgm/model/Follower;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->hasTrendPermission()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 314
    return-void
.end method
