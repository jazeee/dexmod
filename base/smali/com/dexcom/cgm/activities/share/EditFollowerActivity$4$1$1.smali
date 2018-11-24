.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1$1;
.super Ljava/lang/Object;
.source "EditFollowerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1$1;->this$2:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 233
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1$1;->this$2:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$900(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1$1;->this$2:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4$1;->this$1:Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$4;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$800(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    return-void
.end method
