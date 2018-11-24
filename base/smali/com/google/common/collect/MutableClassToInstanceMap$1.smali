.class final Lcom/google/common/collect/MutableClassToInstanceMap$1;
.super Ljava/lang/Object;
.source "MutableClassToInstanceMap.java"

# interfaces
.implements Lcom/google/common/collect/MapConstraint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapConstraint",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkKeyValue(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap;->access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public final bridge synthetic checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MutableClassToInstanceMap$1;->checkKeyValue(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
