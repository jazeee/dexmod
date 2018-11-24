.class Lcom/google/common/collect/Synchronized$SynchronizedRandomAccessList;
.super Lcom/google/common/collect/Synchronized$SynchronizedList;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 406
    return-void
.end method
