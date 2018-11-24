.class Lcom/dexcom/cgm/activities/AccountEditActivity$2$1;
.super Ljava/lang/Object;
.source "AccountEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$2;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AccountEditActivity$2;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$2$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$2$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$2;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AccountEditActivity$2;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$2$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$2;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/AccountEditActivity$2;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    .line 157
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->account_edit_no_changes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 156
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    return-void
.end method
