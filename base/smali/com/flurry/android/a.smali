.class public final Lcom/flurry/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b$59b52089:Lcom/dexcom/cgm/h/b;

.field private static final c:Lcom/flurry/sdk/er;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/er",
            "<",
            "Lcom/flurry/sdk/hp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/flurry/android/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/flurry/android/b;

    invoke-direct {v0}, Lcom/flurry/android/b;-><init>()V

    sput-object v0, Lcom/flurry/android/a;->c:Lcom/flurry/sdk/er;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic a$53c20f78()Lcom/dexcom/cgm/h/b;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/flurry/android/a;->b$59b52089:Lcom/dexcom/cgm/h/b;

    return-object v0
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/a;->addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 271
    return-void
.end method

.method public static addOrigin(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 291
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 294
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 295
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "originName not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 298
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "originVersion not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/ei;->a()Lcom/flurry/sdk/ei;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static addSessionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1101
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :goto_0
    return-void

    .line 1104
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    :cond_1
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String name or value passed to addSessionProperty was null or empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1109
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/dg;->a()Lcom/flurry/sdk/dg;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearLocation()V
    .locals 3

    .prologue
    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 196
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "ExplicitLocation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static endTimedEvent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 774
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 775
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :goto_0
    return-void

    .line 778
    :cond_0
    if-nez p0, :cond_1

    .line 779
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to signify the end of event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static endTimedEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 800
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 801
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :goto_0
    return-void

    .line 804
    :cond_0
    if-nez p0, :cond_1

    .line 805
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_1
    if-nez p1, :cond_2

    .line 809
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to endTimedEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/a;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to signify the end of event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAgentVersion()I
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/flurry/sdk/eh;->a()I

    move-result v0

    return v0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/flurry/sdk/eh;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 528
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 529
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :goto_0
    return-object v0

    .line 533
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/dg;->a()Lcom/flurry/sdk/dg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/dg;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v1

    .line 535
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 339
    const-class v1, Lcom/flurry/android/a;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 340
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v0, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :goto_0
    monitor-exit v1

    return-void

    .line 343
    :cond_0
    if-nez p0, :cond_1

    .line 344
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null context"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 346
    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 347
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "apiKey not specified"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/flurry/sdk/iu;->a()V

    .line 352
    invoke-static {p0, p1}, Lcom/flurry/sdk/eg;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    :try_start_4
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static isSessionActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 505
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 506
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_0
    return v0

    .line 510
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hr;->f()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v1

    .line 512
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Lcom/flurry/android/f;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/f;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/e;"
        }
    .end annotation

    .prologue
    .line 656
    sget-object v0, Lcom/flurry/android/e;->kFlurryEventFailed:Lcom/flurry/android/e;

    .line 658
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 659
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return-object v0

    .line 662
    :cond_0
    if-nez p0, :cond_1

    .line 663
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String eventName passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String syndicationId passed to logEvent was null or empty."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_2
    if-nez p2, :cond_3

    .line 671
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v1

    .line 677
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/android/f;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;)Lcom/flurry/android/e;
    .locals 5

    .prologue
    .line 563
    sget-object v0, Lcom/flurry/android/e;->kFlurryEventFailed:Lcom/flurry/android/e;

    .line 565
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 566
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_0
    return-object v0

    .line 569
    :cond_0
    if-nez p0, :cond_1

    .line 570
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;)Lcom/flurry/android/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/e;"
        }
    .end annotation

    .prologue
    .line 613
    sget-object v0, Lcom/flurry/android/e;->kFlurryEventFailed:Lcom/flurry/android/e;

    .line 615
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 616
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_0
    return-object v0

    .line 619
    :cond_0
    if-nez p0, :cond_1

    .line 620
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_1
    if-nez p1, :cond_2

    .line 624
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v1

    .line 630
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/e;"
        }
    .end annotation

    .prologue
    .line 744
    sget-object v0, Lcom/flurry/android/e;->kFlurryEventFailed:Lcom/flurry/android/e;

    .line 746
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 747
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :goto_0
    return-object v0

    .line 750
    :cond_0
    if-nez p0, :cond_1

    .line 751
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_1
    if-nez p1, :cond_2

    .line 755
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String parameters passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v1

    .line 761
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logEvent(Ljava/lang/String;Z)Lcom/flurry/android/e;
    .locals 5

    .prologue
    .line 703
    sget-object v0, Lcom/flurry/android/e;->kFlurryEventFailed:Lcom/flurry/android/e;

    .line 705
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 706
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "Device SDK Version older than 10"

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :goto_0
    return-object v0

    .line 709
    :cond_0
    if-nez p0, :cond_1

    .line 710
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, "String eventId passed to logEvent was null."

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Z)Lcom/flurry/android/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v1

    .line 716
    sget-object v2, Lcom/flurry/android/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to log event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 477
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 478
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 481
    :cond_0
    if-nez p0, :cond_1

    .line 482
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    if-nez v0, :cond_2

    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before ending a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/hr;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 828
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 829
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :goto_0
    return-void

    .line 832
    :cond_0
    if-nez p0, :cond_1

    .line 833
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 836
    :cond_1
    if-nez p1, :cond_2

    .line 837
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_2
    if-nez p2, :cond_3

    .line 841
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String errorClass passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 852
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 853
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :goto_0
    return-void

    .line 856
    :cond_0
    if-nez p0, :cond_1

    .line 857
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String errorId passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_1
    if-nez p1, :cond_2

    .line 861
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String message passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 864
    :cond_2
    if-nez p2, :cond_3

    .line 865
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Throwable passed to onError was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 869
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 882
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 883
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :goto_0
    return-void

    .line 886
    :cond_0
    if-nez p0, :cond_1

    .line 887
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 905
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 906
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :goto_0
    return-void

    .line 909
    :cond_0
    if-nez p0, :cond_1

    .line 910
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String eventId passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_1
    if-nez p1, :cond_2

    .line 914
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Parameters Map passed to onEvent was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 918
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/a;->c(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 919
    :catch_0
    move-exception v0

    .line 920
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onPageView()V
    .locals 3

    .prologue
    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 929
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :goto_0
    return-void

    .line 933
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/a;->a()Lcom/flurry/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/a;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onStartSession(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 426
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_0
    return-void

    .line 429
    :cond_0
    if-nez p0, :cond_1

    .line 430
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    if-nez v0, :cond_2

    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/hr;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 367
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 370
    :cond_0
    if-nez p0, :cond_1

    .line 371
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 374
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Api key not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_3
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    if-nez v0, :cond_4

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flurry SDK must be initialized before starting a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/hr;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    sget-object v1, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setAge(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1026
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1027
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    if-lez p0, :cond_0

    const/16 v0, 0x6e

    if-ge p0, v0, :cond_0

    .line 1032
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide v4, 0x7528ad000L

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1034
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v0

    .line 1035
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v0, v6, v6}, Ljava/util/Date;-><init>(III)V

    .line 1036
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1038
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v2

    const-string v3, "Age"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 3

    .prologue
    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 252
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "CaptureUncaughtExceptions"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setContinueSessionMillis(J)V
    .locals 4

    .prologue
    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 220
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 224
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid time set for session resumption: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setFlurryAgentListener$114a312c(Lcom/dexcom/cgm/h/b;)V
    .locals 3

    .prologue
    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 73
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    if-nez p0, :cond_1

    .line 78
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Listener cannot be null"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v2, Lcom/flurry/android/a;->c:Lcom/flurry/sdk/er;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/es;->b(Ljava/lang/String;Lcom/flurry/sdk/er;)V

    goto :goto_0

    .line 82
    :cond_1
    sput-object p0, Lcom/flurry/android/a;->b$59b52089:Lcom/dexcom/cgm/h/b;

    .line 83
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    sget-object v2, Lcom/flurry/android/a;->c:Lcom/flurry/sdk/er;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/lang/String;Lcom/flurry/sdk/er;)V

    goto :goto_0
.end method

.method public static setGender(B)V
    .locals 3

    .prologue
    .line 1049
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1050
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :goto_0
    return-void

    .line 1053
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1060
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "Gender"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1056
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "Gender"

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1053
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setLocation(FF)V
    .locals 4

    .prologue
    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 180
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, "Explicit"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 185
    float-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 186
    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 188
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v1

    const-string v2, "ExplicitLocation"

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setLocationCriteria(Landroid/location/Criteria;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1013
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1014
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    :cond_0
    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 2

    .prologue
    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 114
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    if-eqz p0, :cond_1

    .line 118
    invoke-static {}, Lcom/flurry/sdk/fd;->b()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/fd;->a()V

    goto :goto_0
.end method

.method public static setLogEvents(Z)V
    .locals 3

    .prologue
    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 238
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 2

    .prologue
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 131
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {p0}, Lcom/flurry/sdk/fd;->a(I)V

    goto :goto_0
.end method

.method public static setPulseEnabled(Z)V
    .locals 3

    .prologue
    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 315
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "ProtonEnabled"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    if-nez p0, :cond_0

    .line 322
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "analyticsEnabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setReportLocation(Z)V
    .locals 3

    .prologue
    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 164
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "ReportLocation"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setSessionOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1085
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1086
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :goto_0
    return-void

    .line 1089
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String originName passed to setSessionOrigin was null or empty."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/dg;->a()Lcom/flurry/sdk/dg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/dg;->a(Ljava/lang/String;)V

    .line 1095
    invoke-static {}, Lcom/flurry/sdk/dg;->a()Lcom/flurry/sdk/dg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dg;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1072
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1073
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :goto_0
    return-void

    .line 1076
    :cond_0
    if-nez p0, :cond_1

    .line 1077
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String userId passed to setUserId was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "UserId"

    invoke-static {p0}, Lcom/flurry/sdk/ik;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setVersionName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 146
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "Device SDK Version older than 10"

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    if-nez p0, :cond_1

    .line 150
    sget-object v0, Lcom/flurry/android/a;->a:Ljava/lang/String;

    const-string v1, "String versionName passed to setVersionName was null."

    invoke-static {v0, v1}, Lcom/flurry/sdk/fd;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    const-string v1, "VersionName"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/ia;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
