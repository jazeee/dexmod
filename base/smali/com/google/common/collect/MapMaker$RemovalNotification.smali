.class final Lcom/google/common/collect/MapMaker$RemovalNotification;
.super Lcom/google/common/collect/ImmutableEntry;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableEntry",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Lcom/google/common/collect/MapMaker$RemovalCause;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 662
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 663
    iput-object p3, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 664
    return-void
.end method


# virtual methods
.method public final getCause()Lcom/google/common/collect/MapMaker$RemovalCause;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method

.method public final wasEvicted()Z
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker$RemovalCause;->wasEvicted()Z

    move-result v0

    return v0
.end method