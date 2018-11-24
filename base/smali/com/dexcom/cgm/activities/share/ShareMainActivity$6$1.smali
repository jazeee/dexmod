.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$6$1;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6$1;->this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6$1;->this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$100(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6$1;->this$1:Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;

    iget-boolean v1, v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;->val$refreshing:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 267
    return-void
.end method
