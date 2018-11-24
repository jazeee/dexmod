.class Lcom/dexcom/cgm/activities/AccountEditActivity$1;
.super Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;
.source "AccountEditActivity.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$1;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSave(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$1;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v2, Lcom/dexcom/cgm/activities/R$string;->account_edit_invalid_name:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    .line 133
    :goto_0
    return v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$1;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$000(Lcom/dexcom/cgm/activities/AccountEditActivity;)Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getOldText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$1;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    new-instance v2, Lcom/dexcom/cgm/activities/AccountEditActivity$1$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/AccountEditActivity$1$1;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$1;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$100(Lcom/dexcom/cgm/activities/AccountEditActivity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
