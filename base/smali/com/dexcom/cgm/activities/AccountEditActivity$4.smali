.class Lcom/dexcom/cgm/activities/AccountEditActivity$4;
.super Ljava/lang/Object;
.source "AccountEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$4;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$4;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$900(Lcom/dexcom/cgm/activities/AccountEditActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 537
    return-void
.end method
