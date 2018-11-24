.class public Lcom/flurry/sdk/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/flurry/sdk/dh;


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/dx;",
            "[B>;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/er;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/er",
            "<",
            "Lcom/flurry/sdk/hp;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/dn;

.field private g:Lcom/flurry/sdk/dz;

.field private h:Ljava/lang/String;

.field private i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/flurry/sdk/dh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->v()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dh;->d:Ljava/util/Map;

    .line 73
    new-instance v0, Lcom/flurry/sdk/di;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/di;-><init>(Lcom/flurry/sdk/dh;)V

    iput-object v0, p0, Lcom/flurry/sdk/dh;->e:Lcom/flurry/sdk/er;

    .line 92
    sget-object v0, Lcom/flurry/sdk/dn;->a:Lcom/flurry/sdk/dn;

    iput-object v0, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    .line 98
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/dh;->e:Lcom/flurry/sdk/er;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/lang/String;Lcom/flurry/sdk/er;)V

    .line 99
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dk;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dk;-><init>(Lcom/flurry/sdk/dh;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/dh;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/flurry/sdk/dh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dh;->b:Lcom/flurry/sdk/dh;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/flurry/sdk/dh;

    invoke-direct {v0}, Lcom/flurry/sdk/dh;-><init>()V

    sput-object v0, Lcom/flurry/sdk/dh;->b:Lcom/flurry/sdk/dh;

    .line 48
    :cond_0
    sget-object v0, Lcom/flurry/sdk/dh;->b:Lcom/flurry/sdk/dh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/dh;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->j()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 393
    invoke-interface {p2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 323
    const/4 v2, 0x0

    .line 325
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;Ljava/io/DataOutput;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 330
    invoke-static {v1}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    .line 331
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 328
    :goto_1
    const/4 v2, 0x6

    :try_start_2
    sget-object v3, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string v4, "Error when saving deviceId"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    invoke-static {v1}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 327
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/sdk/dh;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 404
    const v1, 0xb5fa

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-object v0

    .line 408
    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 412
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 414
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/dh;->b:Lcom/flurry/sdk/dh;

    .line 53
    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/dh;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->i()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/flurry/sdk/dh;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/flurry/sdk/ij;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/flurry/sdk/dh;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 141
    :goto_0
    sget-object v0, Lcom/flurry/sdk/dn;->f:Lcom/flurry/sdk/dn;

    iget-object v1, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/flurry/sdk/dm;->b:[I

    iget-object v1, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    invoke-virtual {v1}, Lcom/flurry/sdk/dn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_1
    :try_start_0
    sget-object v0, Lcom/flurry/sdk/dm;->b:[I

    iget-object v1, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    invoke-virtual {v1}, Lcom/flurry/sdk/dn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception during id fetch:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/dn;->b:Lcom/flurry/sdk/dn;

    iput-object v0, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    goto :goto_1

    .line 149
    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/dn;->c:Lcom/flurry/sdk/dn;

    iput-object v0, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    goto :goto_1

    .line 153
    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/dn;->d:Lcom/flurry/sdk/dn;

    iput-object v0, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    goto :goto_1

    .line 157
    :pswitch_4
    sget-object v0, Lcom/flurry/sdk/dn;->e:Lcom/flurry/sdk/dn;

    iput-object v0, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    goto :goto_1

    .line 161
    :pswitch_5
    sget-object v0, Lcom/flurry/sdk/dn;->f:Lcom/flurry/sdk/dn;

    iput-object v0, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    goto :goto_1

    .line 177
    :pswitch_6
    :try_start_1
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->k()V

    goto :goto_0

    .line 181
    :pswitch_7
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->l()V

    goto :goto_0

    .line 185
    :pswitch_8
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->x()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v0, Lcom/flurry/sdk/do;

    invoke-direct {v0}, Lcom/flurry/sdk/do;-><init>()V

    .line 199
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/eq;)V

    .line 200
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 171
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private j()V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/flurry/sdk/ik;->b()V

    .line 210
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->n()Lcom/flurry/sdk/dz;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dh;->g:Lcom/flurry/sdk/dz;

    .line 217
    invoke-virtual {p0}, Lcom/flurry/sdk/dh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->x()V

    .line 224
    new-instance v0, Lcom/flurry/sdk/dp;

    invoke-direct {v0}, Lcom/flurry/sdk/dp;-><init>()V

    .line 225
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/es;->a(Lcom/flurry/sdk/eq;)V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/flurry/sdk/ik;->b()V

    .line 240
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dh;->h:Ljava/lang/String;

    .line 241
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->w()V

    goto :goto_0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/il;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private n()Lcom/flurry/sdk/dz;
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/il;->b(Landroid/content/Context;)Lcom/flurry/sdk/dz;

    move-result-object v0

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->p()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dh;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AND"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->s()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->t()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/flurry/sdk/dh;->r()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    invoke-direct {p0, v0}, Lcom/flurry/sdk/dh;->b(Ljava/lang/String;)V

    .line 287
    :cond_1
    return-object v0
.end method

.method private r()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x25

    .line 303
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 304
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/ii;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/ik;->i(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ID"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/flurry/sdk/dh;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-object v0

    .line 344
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :try_start_1
    invoke-direct {p0, v2}, Lcom/flurry/sdk/dh;->a(Ljava/io/DataInput;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 349
    invoke-static {v2}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 347
    :goto_1
    const/4 v3, 0x6

    :try_start_2
    sget-object v4, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    invoke-static {v2}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 346
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private t()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 356
    if-nez v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :cond_1
    new-instance v2, Lcom/flurry/sdk/dl;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/dl;-><init>(Lcom/flurry/sdk/dh;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 367
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 371
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 373
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 374
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :try_start_1
    invoke-direct {p0, v2}, Lcom/flurry/sdk/dh;->b(Ljava/io/DataInput;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 386
    invoke-static {v2}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 383
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 384
    :goto_1
    const/4 v3, 0x6

    :try_start_2
    sget-object v4, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 386
    invoke-static {v2}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 383
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    const-string v0, ".flurryb."

    return-object v0
.end method

.method private v()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 427
    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    const-string v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    const-string v1, "dead00beef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .locals 6

    .prologue
    const/16 v2, 0x14

    const/4 v5, 0x6

    .line 434
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 435
    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 443
    :try_start_0
    invoke-static {v0}, Lcom/flurry/sdk/ik;->f(Ljava/lang/String;)[B

    move-result-object v0

    .line 446
    if-eqz v0, :cond_2

    array-length v1, v0

    if-ne v1, v2, :cond_2

    .line 447
    iput-object v0, p0, Lcom/flurry/sdk/dh;->i:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    sget-object v0, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string v1, "Exception in generateHashedImei()"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_2
    const/4 v1, 0x6

    :try_start_1
    sget-object v2, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sha1 is not "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 450
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 459
    invoke-virtual {p0}, Lcom/flurry/sdk/dh;->d()Ljava/lang/String;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 461
    sget-object v1, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string v2, "Fetched advertising id"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/flurry/sdk/dh;->d:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/dx;->c:Lcom/flurry/sdk/dx;

    invoke-static {v0}, Lcom/flurry/sdk/ik;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/dh;->f()Ljava/lang/String;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_1

    .line 467
    sget-object v1, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string v2, "Fetched device id"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/flurry/sdk/dh;->d:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/dx;->a:Lcom/flurry/sdk/dx;

    invoke-static {v0}, Lcom/flurry/sdk/ik;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/dh;->g()[B

    move-result-object v0

    .line 472
    if-eqz v0, :cond_2

    .line 473
    sget-object v1, Lcom/flurry/sdk/dh;->a:Ljava/lang/String;

    const-string v2, "Fetched hashed IMEI"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/flurry/sdk/dh;->d:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/dx;->b:Lcom/flurry/sdk/dx;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_2
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/flurry/sdk/dn;->f:Lcom/flurry/sdk/dn;

    iget-object v1, p0, Lcom/flurry/sdk/dh;->f:Lcom/flurry/sdk/dn;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/dh;->g:Lcom/flurry/sdk/dz;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/dh;->g:Lcom/flurry/sdk/dz;

    invoke-virtual {v0}, Lcom/flurry/sdk/dz;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-object v1, p0, Lcom/flurry/sdk/dh;->g:Lcom/flurry/sdk/dz;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/dh;->g:Lcom/flurry/sdk/dz;

    invoke-virtual {v1}, Lcom/flurry/sdk/dz;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/dh;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()[B
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/dh;->i:[B

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/dx;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/dh;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
