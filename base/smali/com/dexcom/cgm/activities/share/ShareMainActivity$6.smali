.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

.field final synthetic val$refreshing:Z


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;Z)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;->val$refreshing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$100(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$6$1;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method
