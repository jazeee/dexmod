.class Lcom/google/common/collect/BinaryTreeTraverser$1;
.super Lcom/google/common/collect/FluentIterable;
.source "BinaryTreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/BinaryTreeTraverser;

.field final synthetic val$root:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iput-object p2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1;->val$root:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/BinaryTreeTraverser$1$1;-><init>(Lcom/google/common/collect/BinaryTreeTraverser$1;)V

    return-object v0
.end method
