.class public Lcom/flurry/sdk/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/flurry/sdk/bk;


# instance fields
.field private a:Ljava/lang/String;

.field private d:Lcom/flurry/sdk/ep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ep",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bn;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bn;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/flurry/sdk/bk;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/bk;->c:Lcom/flurry/sdk/bk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/bk;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/flurry/sdk/bk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/bk;->c:Lcom/flurry/sdk/bk;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/flurry/sdk/bk;

    invoke-direct {v0}, Lcom/flurry/sdk/bk;-><init>()V

    .line 67
    sput-object v0, Lcom/flurry/sdk/bk;->c:Lcom/flurry/sdk/bk;

    invoke-direct {v0}, Lcom/flurry/sdk/bk;->e()V

    .line 69
    :cond_0
    sget-object v0, Lcom/flurry/sdk/bk;->c:Lcom/flurry/sdk/bk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/bk;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/bk;)Lcom/flurry/sdk/ep;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/bk;->d:Lcom/flurry/sdk/ep;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 73
    new-instance v0, Lcom/flurry/sdk/ep;

    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/flurry/sdk/bk;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurrypulselogging."

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/bl;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/bl;-><init>(Lcom/flurry/sdk/bk;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/ep;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/hn;)V

    iput-object v0, p0, Lcom/flurry/sdk/bk;->d:Lcom/flurry/sdk/ep;

    .line 80
    invoke-static {}, Lcom/flurry/sdk/ia;->a()Lcom/flurry/sdk/ia;

    move-result-object v0

    .line 82
    const-string v1, "UseHttps"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ib;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/bk;->f:Z

    .line 83
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, UseHttps = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/flurry/sdk/bk;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/flurry/sdk/bk;->d:Lcom/flurry/sdk/ep;

    invoke-virtual {v0}, Lcom/flurry/sdk/ep;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    .line 86
    iget-object v0, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    .line 90
    :cond_0
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".yflurrypulselogging."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/eg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/ik;->i(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/flurry/sdk/bk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/flurry/sdk/bk;->a:Ljava/lang/String;

    .line 292
    :goto_0
    return-object v0

    .line 289
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/bk;->f:Z

    if-eqz v0, :cond_1

    .line 290
    const-string v0, "https://data.flurry.com/pcr.do"

    goto :goto_0

    .line 292
    :cond_1
    const-string v0, "https://data.flurry.com/pcr.do"

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/flurry/sdk/bg;)V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/sdk/bn;

    invoke-virtual {p1}, Lcom/flurry/sdk/bg;->h()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/bn;-><init>([B)V

    .line 97
    iget-object v1, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v2, "Saving persistent Pulse logging data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/flurry/sdk/bk;->d:Lcom/flurry/sdk/ep;

    iget-object v1, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ep;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :catch_0
    move-exception v0

    const/4 v0, 0x6

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v2, "Error when generating pulse log report in addReport part"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 297
    if-eqz p1, :cond_0

    const-string v0, ".do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/bk;->a:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public declared-synchronized a([B)V
    .locals 5

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v2, "Reports were not sent! No Internet connection!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    array-length v0, p1

    if-nez v0, :cond_2

    .line 231
    :cond_1
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v2, "No report need be sent"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 235
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/flurry/sdk/bk;->g()Ljava/lang/String;

    move-result-object v0

    .line 236
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PulseLoggingManager: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcom/flurry/sdk/fj;

    invoke-direct {v1}, Lcom/flurry/sdk/fj;-><init>()V

    .line 239
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fj;->a(Ljava/lang/String;)V

    .line 240
    const v0, 0x186a0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fj;->d(I)V

    .line 241
    sget-object v0, Lcom/flurry/sdk/fr;->c:Lcom/flurry/sdk/fr;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/fr;)V

    .line 242
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fj;->b(Z)V

    .line 243
    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/fj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/flurry/sdk/hd;

    invoke-direct {v0}, Lcom/flurry/sdk/hd;-><init>()V

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/hj;)V

    .line 245
    invoke-virtual {v1, p1}, Lcom/flurry/sdk/fj;->a(Ljava/lang/Object;)V

    .line 246
    new-instance v0, Lcom/flurry/sdk/bm;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/bm;-><init>(Lcom/flurry/sdk/bk;)V

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/fj;->a(Lcom/flurry/sdk/fl;)V

    .line 269
    invoke-static {}, Lcom/flurry/sdk/ea;->a()Lcom/flurry/sdk/ea;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/ea;->a(Ljava/lang/Object;Lcom/flurry/sdk/ip;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b()[B
    .locals 7

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 220
    invoke-static {v2}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    .line 123
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 132
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/flurry/sdk/dy;->a()Lcom/flurry/sdk/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dy;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/flurry/sdk/eh;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 141
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 144
    invoke-static {}, Lcom/flurry/sdk/dy;->a()Lcom/flurry/sdk/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dy;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/flurry/sdk/dh;->a()Lcom/flurry/sdk/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dh;->e()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-static {}, Lcom/flurry/sdk/dh;->a()Lcom/flurry/sdk/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dh;->h()Ljava/util/Map;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    new-instance v6, Lcom/flurry/sdk/j;

    invoke-direct {v6}, Lcom/flurry/sdk/j;-><init>()V

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/dx;

    iget v1, v1, Lcom/flurry/sdk/dx;->d:I

    iput v1, v6, Lcom/flurry/sdk/j;->a:I

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/dx;

    iget-boolean v1, v1, Lcom/flurry/sdk/dx;->e:Z

    if-eqz v1, :cond_2

    .line 155
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v6, Lcom/flurry/sdk/j;->b:Ljava/lang/String;

    .line 160
    :goto_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 217
    :goto_3
    const/4 v2, 0x6

    :try_start_3
    sget-object v3, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    throw v0

    .line 158
    :cond_2
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/flurry/sdk/ik;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/flurry/sdk/j;->b:Ljava/lang/String;

    goto :goto_2

    .line 220
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 164
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 166
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/j;

    .line 168
    iget v4, v0, Lcom/flurry/sdk/j;->a:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 171
    iget-object v0, v0, Lcom/flurry/sdk/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 172
    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 173
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_5

    .line 177
    :cond_4
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 178
    sget-object v0, Lcom/flurry/sdk/al;->b:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()I

    move-result v0

    .line 179
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 180
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/flurry/sdk/al;->c:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()I

    move-result v0

    .line 183
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 184
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/flurry/sdk/al;->d:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()I

    move-result v0

    .line 187
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 188
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/flurry/sdk/al;->e:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()I

    move-result v0

    .line 191
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 192
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/flurry/sdk/al;->f:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()I

    move-result v0

    .line 195
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 196
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/flurry/sdk/al;->g:Lcom/flurry/sdk/al;

    invoke-virtual {v0}, Lcom/flurry/sdk/al;->a()I

    move-result v0

    .line 199
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 200
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 204
    iget-object v0, p0, Lcom/flurry/sdk/bk;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/bn;

    .line 205
    invoke-virtual {v0}, Lcom/flurry/sdk/bn;->a()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_6

    .line 208
    :cond_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 209
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 210
    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 211
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 212
    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 214
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 220
    invoke-static {v2}, Lcom/flurry/sdk/ik;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    .line 216
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/bk;->b()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/bk;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :catch_0
    move-exception v0

    const/4 v0, 0x6

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/bk;->b:Ljava/lang/String;

    const-string v2, "Report not send due to exception in generate data"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
