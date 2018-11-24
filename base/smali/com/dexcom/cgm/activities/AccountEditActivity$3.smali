.class Lcom/dexcom/cgm/activities/AccountEditActivity$3;
.super Ljava/lang/Object;
.source "AccountEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$200(Lcom/dexcom/cgm/activities/AccountEditActivity;)Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$000(Lcom/dexcom/cgm/activities/AccountEditActivity;)Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->account_edit_take_photo:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    .line 179
    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->account_edit_choose_from_storage:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 180
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->account_edit_change_account_image:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;

    invoke-direct {v3, p0}, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity$3;)V

    .line 183
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 227
    :cond_0
    return-void
.end method
