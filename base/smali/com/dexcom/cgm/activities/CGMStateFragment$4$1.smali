.class Lcom/dexcom/cgm/activities/CGMStateFragment$4$1;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$4;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$4;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$4$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$4$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$4;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$4;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$4$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$4;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$4;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 799
    const-string v1, "VIDEO_URL"

    const-string v2, "https://www.dexcom.com/g5mobile/links/sensor-insertion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string v1, "START_OFFSET_IN_SECONDS"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 803
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$4$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$4;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$4;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->startActivity(Landroid/content/Intent;)V

    .line 810
    :goto_0
    return-void

    .line 807
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$4$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$4;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$4;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method
