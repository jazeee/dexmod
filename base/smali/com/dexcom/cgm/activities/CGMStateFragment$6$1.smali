.class Lcom/dexcom/cgm/activities/CGMStateFragment$6$1;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$6;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$6;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$6$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 935
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$6$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$6;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$6;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_bg_meter_value_tips:I

    new-instance v2, Lcom/dexcom/cgm/activities/CGMStateFragment$6$1$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$6$1$1;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$6$1;)V

    .line 936
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 955
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$6$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$6;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$6;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->main_screen_error_new_bg_needed:I

    .line 956
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 959
    return-void
.end method
