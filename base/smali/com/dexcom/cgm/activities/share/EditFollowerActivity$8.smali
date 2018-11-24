.class Lcom/dexcom/cgm/activities/share/EditFollowerActivity$8;
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
    .line 369
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 373
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$900(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/EditFollowerActivity$8;->this$0:Lcom/dexcom/cgm/activities/share/EditFollowerActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/EditFollowerActivity;->access$800(Lcom/dexcom/cgm/activities/share/EditFollowerActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    return-void
.end method
