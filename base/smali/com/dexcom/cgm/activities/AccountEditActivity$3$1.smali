.class Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;
.super Ljava/lang/Object;
.source "AccountEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/AccountEditActivity$3;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 189
    if-nez p2, :cond_3

    .line 191
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$400(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$500(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$700(Lcom/dexcom/cgm/activities/AccountEditActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$602(Lcom/dexcom/cgm/activities/AccountEditActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    const-string v1, "output"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v2, v2, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$600(Lcom/dexcom/cgm/activities/AccountEditActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$700(Lcom/dexcom/cgm/activities/AccountEditActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$602(Lcom/dexcom/cgm/activities/AccountEditActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$3$1;->this$1:Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    iget-object v2, v2, Lcom/dexcom/cgm/activities/AccountEditActivity$3;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    .line 219
    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->account_edit_choose_from_storage:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
