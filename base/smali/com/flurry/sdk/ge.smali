.class public abstract Lcom/flurry/sdk/ge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/flurry/sdk/gr;

.field protected d:Ljava/lang/String;

.field private e:Lcom/flurry/sdk/er;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/er",
            "<",
            "Lcom/flurry/sdk/du;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ge;->b:Ljava/util/Set;

    .line 35
    const-string v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/flurry/sdk/ge;->d:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/flurry/sdk/gf;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/gf;-><init>(Lcom/flurry/sdk/ge;)V

    iput-object v0, p0, Lcom/flurry/sdk/ge;->e:Lcom/flurry/sdk/er;

    .line 53
    iput-object p2, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ge;->e:Lcom/flurry/sdk/er;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/es;->a(Ljava/lang/String;Lcom/flurry/sdk/er;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ge;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/sdk/ge;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/io;)V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/flurry/sdk/gg;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/gg;-><init>(Lcom/flurry/sdk/ge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ge;->a(Lcom/flurry/sdk/io;)V

    .line 70
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/flurry/sdk/gl;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/sdk/gl;-><init>(Lcom/flurry/sdk/ge;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ge;->a(Lcom/flurry/sdk/io;)V

    .line 294
    return-void
.end method

.method protected abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method protected a$4ca25166(Lcom/dexcom/cgm/h/b;)V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/flurry/sdk/gi;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/gi;-><init>(Lcom/flurry/sdk/ge;Lcom/dexcom/cgm/h/b;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ge;->a(Lcom/flurry/sdk/io;)V

    .line 135
    return-void
.end method

.method public a$51231adf([BLjava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/h/b;)V
    .locals 3

    .prologue
    .line 93
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    const-string v2, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/ge;->c([BLjava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p4}, Lcom/flurry/sdk/ge;->a$4ca25166(Lcom/dexcom/cgm/h/b;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/flurry/sdk/gm;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/gm;-><init>(Lcom/flurry/sdk/ge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ge;->a(Lcom/flurry/sdk/io;)V

    .line 308
    return-void
.end method

.method public b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/ge;->a$51231adf([BLjava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/h/b;)V

    .line 88
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 312
    iget-object v0, p0, Lcom/flurry/sdk/ge;->c:Lcom/flurry/sdk/gr;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/gr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error. Block wasn\'t deleted with id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ge;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 321
    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error. Block with id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not in progress state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_1
    return-void
.end method

.method protected c([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/flurry/sdk/gh;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/gh;-><init>(Lcom/flurry/sdk/ge;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ge;->a(Lcom/flurry/sdk/io;)V

    .line 118
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/ge;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected d([BLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 187
    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/ge;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/flurry/sdk/gn;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/gn;-><init>([B)V

    .line 190
    invoke-virtual {v1}, Lcom/flurry/sdk/gn;->a()Ljava/lang/String;

    move-result-object v2

    .line 192
    new-instance v3, Lcom/flurry/sdk/ep;

    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Lcom/flurry/sdk/gn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, ".yflurrydatasenderblock."

    const/4 v6, 0x1

    new-instance v7, Lcom/flurry/sdk/gj;

    invoke-direct {v7, p0}, Lcom/flurry/sdk/gj;-><init>(Lcom/flurry/sdk/ge;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/flurry/sdk/ep;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/hn;)V

    .line 199
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/ep;->a(Ljava/lang/Object;)V

    .line 200
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Saving Block File "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v2}, Lcom/flurry/sdk/gn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/flurry/sdk/ge;->c:Lcom/flurry/sdk/gr;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/gn;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ge;->a$4ca25166(Lcom/dexcom/cgm/h/b;)V

    .line 122
    return-void
.end method

.method protected f()Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->d()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x4

    .line 209
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    const-string v1, "Reports were not sent! No Internet connection!"

    invoke-static {v11, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ge;->c:Lcom/flurry/sdk/gr;

    invoke-virtual {v0}, Lcom/flurry/sdk/gr;->a()Ljava/util/List;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v10, v0, v1}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/flurry/sdk/ge;->c:Lcom/flurry/sdk/gr;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gr;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 228
    iget-object v1, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number of not sent blocks = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 232
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/flurry/sdk/ge;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 239
    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    new-instance v2, Lcom/flurry/sdk/ep;

    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v6

    invoke-static {v1}, Lcom/flurry/sdk/gn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const-string v7, ".yflurrydatasenderblock."

    const/4 v8, 0x1

    new-instance v9, Lcom/flurry/sdk/gk;

    invoke-direct {v9, p0}, Lcom/flurry/sdk/gk;-><init>(Lcom/flurry/sdk/ge;)V

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/flurry/sdk/ep;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/hn;)V

    .line 250
    invoke-virtual {v2}, Lcom/flurry/sdk/ep;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/gn;

    .line 251
    if-nez v2, :cond_6

    .line 252
    iget-object v2, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    const-string v6, "Internal ERROR! Cannot read!"

    invoke-static {v12, v2, v6}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/flurry/sdk/ge;->c:Lcom/flurry/sdk/gr;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/gr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    :cond_5
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 257
    :cond_6
    invoke-virtual {v2}, Lcom/flurry/sdk/gn;->b()[B

    move-result-object v2

    .line 258
    if-eqz v2, :cond_7

    array-length v6, v2

    if-nez v6, :cond_8

    .line 259
    :cond_7
    iget-object v2, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    const-string v6, "Internal ERROR! Report is empty!"

    invoke-static {v12, v2, v6}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/flurry/sdk/ge;->c:Lcom/flurry/sdk/gr;

    invoke-virtual {v2, v1, v0}, Lcom/flurry/sdk/gr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 264
    :cond_8
    iget-object v6, p0, Lcom/flurry/sdk/ge;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Reading block info "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v6, v7}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v6, p0, Lcom/flurry/sdk/ge;->b:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p0, v2, v1, v0}, Lcom/flurry/sdk/ge;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
