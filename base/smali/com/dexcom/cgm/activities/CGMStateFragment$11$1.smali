.class Lcom/dexcom/cgm/activities/CGMStateFragment$11$1;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$11;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$11$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$11$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$11;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$11$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$11;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1078
    const-string v1, "VIDEO_URL"

    const-string v2, "https://www.dexcom.com/g5mobile/links/sensor-insertion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    const-string v1, "START_OFFSET_IN_SECONDS"

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1082
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$11$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$11;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->startActivity(Landroid/content/Intent;)V

    .line 1089
    :goto_0
    return-void

    .line 1086
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$11$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$11;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$11;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method
