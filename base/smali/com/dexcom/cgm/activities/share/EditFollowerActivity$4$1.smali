.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;Z)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;

    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;->val$isChecked:Z

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$1000(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;Z)V

    .line 228
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    new-instance v1, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1$1;-><init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method
