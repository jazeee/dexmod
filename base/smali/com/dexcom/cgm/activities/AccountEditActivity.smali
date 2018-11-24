.class public Lcom/dexcom/cgm/activities/AccountEditActivity;
.super Landroid/app/Activity;
.source "AccountEditActivity.java"


# static fields
.field private static final TEMP_UPDATE_PHOTO:Ljava/lang/String; = "tempImg.png"

.field private static final rfc2822:Ljava/util/regex/Pattern;


# instance fields
.field private final REQUEST_CAMERA:I

.field private final REQUEST_STORAGE:I

.field private m_accountImageView:Landroid/widget/ImageView;

.field private m_cgmPresentationExtension:Lcom/dexcom/cgm/i/a;

.field private m_emailEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

.field private m_nameEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

.field private m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

.field private m_rotation:I

.field private m_rotationInDegrees:I

.field private m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

.field private m_tmpFile:Ljava/io/File;

.field private parentLayout:Landroid/view/View;

.field private temporaryUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "^[a-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/activities/AccountEditActivity;->rfc2822:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-array v0, v1, [Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->REQUEST_CAMERA:I

    .line 71
    iput v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->REQUEST_STORAGE:I

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/AccountEditActivity;)Lcom/dexcom/cgm/activities/controls/DexListEditTextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_nameEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/AccountEditActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->saveDisplayName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/AccountEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/activities/AccountEditActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/dexcom/cgm/activities/AccountEditActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_accountImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/dexcom/cgm/activities/AccountEditActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_tmpFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/AccountEditActivity;)Lcom/dexcom/cgm/activities/controls/DexListEditTextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_emailEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/AccountEditActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->saveEmailAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/AccountEditActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->requestCameraPermission()V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/AccountEditActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->requestStoragePermission()V

    return-void
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/AccountEditActivity;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->temporaryUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$602(Lcom/dexcom/cgm/activities/AccountEditActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->temporaryUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/AccountEditActivity;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getTempUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/AccountEditActivity;)Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    return-object v0
.end method

.method private static exifToDegrees(I)I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/16 v0, 0x5a

    .line 389
    :goto_0
    return v0

    .line 387
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/16 v0, 0xb4

    goto :goto_0

    .line 388
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    const/16 v0, 0x10e

    goto :goto_0

    .line 389
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTempFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 430
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tempImg.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_tmpFile:Ljava/io/File;

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_tmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_tmpFile:Ljava/io/File;

    :goto_0
    return-object v0

    .line 438
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTempUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getTempFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getTempFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private hideProgress()V
    .locals 1

    .prologue
    .line 541
    new-instance v0, Lcom/dexcom/cgm/activities/AccountEditActivity$5;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/AccountEditActivity$5;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 549
    return-void
.end method

.method public static isInvalidEmail(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/dexcom/cgm/activities/AccountEditActivity;->rfc2822:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestCameraPermission()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 553
    const-string v0, "Account Activity"

    const-string v1, "CAMERA permission has NOT been granted. Requesting permission."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    const-string v0, "Account Activity"

    const-string v1, "Displaying camera permission rationale to provide additional context."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_camera_account_rationale:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->ok:I

    new-instance v2, Lcom/dexcom/cgm/activities/AccountEditActivity$6;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/AccountEditActivity$6;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    .line 562
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private requestStoragePermission()V
    .locals 3

    .prologue
    .line 583
    const-string v0, "Account Activity"

    const-string v1, "STORAGE permission has NOT been granted. Requesting permission."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const-string v0, "Account Activity"

    const-string v1, "Displaying storage permission rationale to provide additional context."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_storage_account_rationale:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->ok:I

    new-instance v2, Lcom/dexcom/cgm/activities/AccountEditActivity$7;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/AccountEditActivity$7;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    .line 593
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private rotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 394
    iget v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotation:I

    int-to-float v0, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 396
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 397
    iget v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotationInDegrees:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 398
    iput v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotation:I

    .line 399
    iput v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotationInDegrees:I

    .line 403
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 400
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 412
    :goto_0
    return-object p1

    .line 410
    :cond_0
    iput v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotation:I

    .line 411
    iput v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotationInDegrees:I

    goto :goto_0
.end method

.method private saveDisplayName(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->showProgress()V

    .line 465
    const/4 v0, 0x0

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->sql_injection_excluded_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->stripChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/dexcom/cgm/share/ShareService;->saveUserDisplayName(Ljava/lang/String;)V

    .line 473
    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v2, Lcom/dexcom/cgm/activities/R$string;->account_edit_name_saved:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2

    .line 475
    const/4 v0, 0x1

    .line 493
    :goto_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->hideProgress()V

    .line 494
    return v0

    .line 486
    :catch_0
    move-exception v1

    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v2, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 490
    :catch_1
    move-exception v1

    :goto_1
    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v2, Lcom/dexcom/cgm/activities/R$string;->toast_server_error:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private saveEmailAddress(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->showProgress()V

    .line 501
    const/4 v0, 0x0

    .line 504
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->sql_injection_excluded_chars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/dexcom/cgm/activities/AccountEditActivity;->stripChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/dexcom/cgm/share/ShareService;->saveUserEmailAddress(Ljava/lang/String;)V

    .line 509
    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v2, Lcom/dexcom/cgm/activities/R$string;->account_edit_email_saved:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/InvalidEmailAddressWSException; {:try_start_0 .. :try_end_0} :catch_2

    .line 511
    const/4 v0, 0x1

    .line 526
    :goto_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->hideProgress()V

    .line 528
    return v0

    .line 515
    :catch_0
    move-exception v1

    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v2, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 519
    :catch_1
    move-exception v1

    :goto_1
    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v2, Lcom/dexcom/cgm/activities/R$string;->toast_server_error:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 523
    :catch_2
    move-exception v1

    new-instance v1, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v2, Lcom/dexcom/cgm/activities/R$string;->account_edit_invalid_email:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0

    .line 519
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x42f00000    # 120.0f

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    .line 449
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 450
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 456
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 457
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 452
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private setRotationVariables()V
    .locals 3

    .prologue
    .line 367
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->temporaryUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotation:I

    .line 370
    iget v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotation:I

    invoke-static {v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->exifToDegrees(I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotationInDegrees:I

    .line 371
    return-void
.end method

.method private setRotationVariables(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 375
    .line 378
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    invoke-static {p0, v0, p1}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->getFromMediaUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lcom/dexcom/cgm/activities/ImageOrientationUtil;->getExifRotation(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotationInDegrees:I

    .line 380
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_rotation:I

    .line 381
    return-void
.end method

.method private setupViews()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_nameEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_cgmPresentationExtension:Lcom/dexcom/cgm/i/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getUserDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setText(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_emailEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_cgmPresentationExtension:Lcom/dexcom/cgm/i/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setText(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_cgmPresentationExtension:Lcom/dexcom/cgm/i/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getUserAvatar()[B

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 258
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_accountImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    :cond_0
    return-void
.end method

.method private showProgress()V
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/dexcom/cgm/activities/AccountEditActivity$4;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/AccountEditActivity$4;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method public static stripChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-char v4, v2, v0

    .line 664
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 665
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 266
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 267
    sparse-switch p1, :sswitch_data_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 270
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 275
    :try_start_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->setRotationVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->temporaryUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->temporaryUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/soundcloud/android/crop/a;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/a;->asSquare()Lcom/soundcloud/android/crop/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/a;->start(Landroid/app/Activity;)V

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 287
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 289
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->setRotationVariables(Landroid/net/Uri;)V

    .line 291
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->temporaryUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/soundcloud/android/crop/a;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/a;->asSquare()Lcom/soundcloud/android/crop/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soundcloud/android/crop/a;->start(Landroid/app/Activity;)V

    goto :goto_0

    .line 296
    :sswitch_2
    if-ne p2, v0, :cond_0

    .line 298
    new-instance v0, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity;Lcom/dexcom/cgm/activities/AccountEditActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/AccountEditActivity$SaveAvatarTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x1a35 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_account_edit:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->setContentView(I)V

    .line 84
    sget v0, Lcom/dexcom/cgm/activities/R$id;->accountParentLayout:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->parentLayout:Landroid/view/View;

    .line 85
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_cgmPresentationExtension:Lcom/dexcom/cgm/i/a;

    .line 86
    sget v0, Lcom/dexcom/cgm/activities/R$id;->user_name_editText:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_nameEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    .line 87
    sget v0, Lcom/dexcom/cgm/activities/R$id;->user_email_editText:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_emailEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_nameEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    aput-object v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_emailEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    aput-object v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_nameEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setSiblingList([Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_emailEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setSiblingList([Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V

    .line 92
    sget v0, Lcom/dexcom/cgm/activities/R$id;->account_imageView:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_accountImageView:Landroid/widget/ImageView;

    .line 93
    sget v0, Lcom/dexcom/cgm/activities/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_progressBar:Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_lighter_gray:I

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setInnerCirclePaint(I)V

    .line 102
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->parentLayout:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 103
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 104
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->setupViews()V

    .line 106
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_nameEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    new-instance v1, Lcom/dexcom/cgm/activities/AccountEditActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/AccountEditActivity$1;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setOnSave(Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;)V

    .line 138
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_emailEditText:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    new-instance v1, Lcom/dexcom/cgm/activities/AccountEditActivity$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/AccountEditActivity$2;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->setOnSave(Lcom/dexcom/cgm/activities/controls/DexListEditTextView$OnSaveListener;)V

    .line 171
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_accountImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/dexcom/cgm/activities/AccountEditActivity$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/AccountEditActivity$3;-><init>(Lcom/dexcom/cgm/activities/AccountEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 614
    if-ne p1, v3, :cond_2

    .line 616
    const-string v0, "Account Activity"

    const-string v1, "Received response for Camera permission request."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    array-length v0, p3

    if-ne v0, v3, :cond_1

    aget v0, p3, v4

    if-nez v0, :cond_1

    .line 622
    const-string v0, "Account Activity"

    const-string v1, "CAMERA permission has now been granted. Showing preview."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_available_camera_account:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 636
    :goto_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->requestStoragePermission()V

    .line 659
    :cond_0
    :goto_1
    return-void

    .line 629
    :cond_1
    const-string v0, "Account Activity"

    const-string v1, "CAMERA permission was NOT granted."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permissions_not_granted:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 642
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 644
    const-string v0, "Account Activity"

    const-string v1, "Received response for Storage permission request."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    array-length v0, p3

    if-ne v0, v3, :cond_3

    aget v0, p3, v4

    if-nez v0, :cond_3

    .line 650
    const-string v0, "Account Activity"

    const-string v1, "STORAGE permission has now been granted. Showing preview."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permission_available_storage_account:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_1

    .line 655
    :cond_3
    const-string v0, "Account Activity"

    const-string v1, "STORAGE permission was NOT granted."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->parentLayout:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->permissions_not_granted:I

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    iget-object v2, p0, Lcom/dexcom/cgm/activities/AccountEditActivity;->m_siblingArray:[Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 239
    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->getDexAccountEditText()Lcom/dexcom/cgm/activities/DexAccountEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/DexAccountEditText;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->cancelEditing()V

    .line 243
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/AccountEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->account_edit_no_changes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 244
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    return-void
.end method
