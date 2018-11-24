.class public final Lcom/samsung/android/sdk/healthdata/a;
.super Ljava/lang/Object;
.source "HealthConnectionErrorResult.java"


# static fields
.field public static final CONNECTION_FAILURE:I = 0x1

.field public static final OLD_VERSION_PLATFORM:I = 0x4

.field public static final OLD_VERSION_SDK:I = 0x3

.field public static final PLATFORM_DISABLED:I = 0x6

.field public static final PLATFORM_INITIALIZING:I = -0x2

.field public static final PLATFORM_NOT_INSTALLED:I = 0x2

.field public static final PLATFORM_SIGNATURE_FAILURE:I = 0x8

.field public static final SUCCESS:I = -0x1

.field public static final TIMEOUT:I = 0x5

.field public static final UNKNOWN:I = 0x0

.field public static final USER_AGREEMENT_NEEDED:I = 0x9

.field public static final USER_PASSWORD_NEEDED:I = 0x7

.field public static final USER_PASSWORD_POPUP:I = -0x3


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput p1, p0, Lcom/samsung/android/sdk/healthdata/a;->b:I

    .line 294
    iput-boolean p2, p0, Lcom/samsung/android/sdk/healthdata/a;->c:Z

    .line 295
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 431
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/a;->a:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 435
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/a;->a:Landroid/content/pm/PackageManager;

    const-string v2, "com.sec.android.app.samsungapps"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 436
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 437
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/a;->b:I

    return v0
.end method

.method public final hasResolution()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 336
    iget v1, p0, Lcom/samsung/android/sdk/healthdata/a;->b:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/healthdata/a;->b:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/healthdata/a;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/sdk/healthdata/a;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 339
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-boolean v0, p0, Lcom/samsung/android/sdk/healthdata/a;->c:Z

    goto :goto_0

    .line 344
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final resolve(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input activity is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/healthdata/a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 423
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 403
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/a;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "samsungapps://ProductDetail/com.sec.android.app.shealth"

    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 404
    :cond_3
    const-string v0, "market://details?id=com.sec.android.app.shealth"

    goto :goto_1

    .line 409
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/healthdata/w;->getPlatformPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 414
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/w;->getPlatformPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/a;->a:Landroid/content/pm/PackageManager;

    .line 428
    return-void
.end method
