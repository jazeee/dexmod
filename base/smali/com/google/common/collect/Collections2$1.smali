.class final Lcom/google/common/collect/Collections2$1;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/common/collect/Collections2$1;->val$collection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/common/collect/Collections2$1;->val$collection:Ljava/util/Collection;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    :cond_0
    return-object p1
.end method
