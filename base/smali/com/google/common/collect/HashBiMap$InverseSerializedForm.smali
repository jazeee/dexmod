.class final Lcom/google/common/collect/HashBiMap$InverseSerializedForm;
.super Ljava/lang/Object;
.source "HashBiMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final bimap:Lcom/google/common/collect/HashBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;->bimap:Lcom/google/common/collect/HashBiMap;

    .line 641
    return-void
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;->bimap:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method
