.class Lcom/google/common/collect/BinaryTreeTraverser$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "BinaryTreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field doneLeft:Z

.field doneRight:Z

.field final synthetic this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser$1;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 69
    iget-boolean v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneLeft:Z

    if-nez v0, :cond_0

    .line 70
    iput-boolean v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneLeft:Z

    .line 71
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v0, v0, Lcom/google/common/collect/BinaryTreeTraverser$1;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v1, v1, Lcom/google/common/collect/BinaryTreeTraverser$1;->val$root:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneRight:Z

    if-nez v0, :cond_1

    .line 77
    iput-boolean v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneRight:Z

    .line 78
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v0, v0, Lcom/google/common/collect/BinaryTreeTraverser$1;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v1, v1, Lcom/google/common/collect/BinaryTreeTraverser$1;->val$root:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
