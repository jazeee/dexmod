.class Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;
.super Ljava/lang/Object;
.source "ShareMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 178
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$400(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->getInternetStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_screen_settings_text_13:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$300(Lcom/dexcom/cgm/activities/share/ShareMainActivity;I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$400(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->getServerStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_screen_settings_text_14:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$300(Lcom/dexcom/cgm/activities/share/ShareMainActivity;I)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->access$400(Lcom/dexcom/cgm/activities/share/ShareMainActivity;)Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->getPhoneStatus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 188
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 189
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 190
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 191
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_share_problem:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 192
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_share_troubleshooting:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 193
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->isDozeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 198
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 199
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_share_doze_enabled:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 200
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;->this$0:Lcom/dexcom/cgm/activities/share/ShareMainActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->doze_state1:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/share/ShareMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 201
    sget v1, Lcom/dexcom/cgm/activities/R$string;->setup_wizard_i_understand:I

    new-instance v2, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/share/ShareMainActivity$5$1;-><init>(Lcom/dexcom/cgm/activities/share/ShareMainActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 210
    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 211
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    goto :goto_0
.end method
