.class final Lcom/google/common/collect/Maps$BiMapConverter;
.super Lcom/google/common/base/Converter;
.source "Maps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Converter",
        "<TA;TB;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final bimap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 1321
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    .line 1322
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BiMap;

    iput-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    .line 1323
    return-void
.end method

.method private static convert(Lcom/google/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TX;TY;>;TX;)TY;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1336
    invoke-interface {p0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1337
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "No non-null mapping present for input: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1338
    return-object v3

    :cond_0
    move v0, v2

    .line 1337
    goto :goto_0
.end method


# virtual methods
.method protected final doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps$BiMapConverter;->convert(Lcom/google/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps$BiMapConverter;->convert(Lcom/google/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1343
    instance-of v0, p1, Lcom/google/common/collect/Maps$BiMapConverter;

    if-eqz v0, :cond_0

    .line 1344
    check-cast p1, Lcom/google/common/collect/Maps$BiMapConverter;

    .line 1345
    iget-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    iget-object v1, p1, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Maps.asConverter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
