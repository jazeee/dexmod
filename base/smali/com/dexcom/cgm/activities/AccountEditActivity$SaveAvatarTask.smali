.class Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;
.super Landroid/os/AsyncTask;
.source "AccountEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field imageBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/AccountEditActivity;Lcom/dexcom/cgm/activities/AccountEditActivity$1;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    .line 321
    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    .line 322
    invoke-static {v3}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$600(Lcom/dexcom/cgm/activities/AccountEditActivity;)Landroid/net/Uri;

    move-result-object v3

    .line 319
    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 318
    invoke-static {v1, v2}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$1000(Lcom/dexcom/cgm/activities/AccountEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$1100(Lcom/dexcom/cgm/activities/AccountEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->imageBitmap:Landroid/graphics/Bitmap;

    .line 323
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->imageBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 325
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 327
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/share/ShareService;->saveUserAvatar([B)V

    .line 330
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->account_edit_image_saved:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    .line 332
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 349
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 341
    :catch_1
    move-exception v0

    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_1

    .line 346
    :catch_2
    move-exception v0

    :goto_2
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_server_error:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$1200(Lcom/dexcom/cgm/activities/AccountEditActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$1300(Lcom/dexcom/cgm/activities/AccountEditActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 361
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$900(Lcom/dexcom/cgm/activities/AccountEditActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 362
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 303
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->this$0:Lcom/dexcom/cgm/activities/AccountEditActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->access$900(Lcom/dexcom/cgm/activities/AccountEditActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setVisibility(I)V

    .line 311
    return-void
.end method
