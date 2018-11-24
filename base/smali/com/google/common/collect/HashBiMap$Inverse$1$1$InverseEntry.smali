.class Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field delegate:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse$1$1;Lcom/google/common/collect/HashBiMap$BiEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 594
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 595
    iput-object p2, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 596
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 610
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v3, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->key:Ljava/lang/Object;

    .line 611
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$300(Ljava/lang/Object;)I

    move-result v4

    .line 612
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v0, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->keyHash:I

    if-ne v4, v0, :cond_0

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    :goto_0
    return-object p1

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0, p1, v4}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v5, "value already present: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v5, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 617
    new-instance v0, Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$BiEntry;->value:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->delegate:Lcom/google/common/collect/HashBiMap$BiEntry;

    iget v2, v2, Lcom/google/common/collect/HashBiMap$BiEntry;->valueHash:I

    invoke-direct {v0, p1, v4, v1, v2}, Lcom/google/common/collect/HashBiMap$BiEntry;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 619
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 620
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Inverse$1$1$InverseEntry;->this$3:Lcom/google/common/collect/HashBiMap$Inverse$1$1;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->this$2:Lcom/google/common/collect/HashBiMap$Inverse$1;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse$1;->this$1:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v1

    iput v1, v0, Lcom/google/common/collect/HashBiMap$Inverse$1$1;->expectedModCount:I

    move-object p1, v3

    .line 623
    goto :goto_0

    :cond_1
    move v0, v2

    .line 615
    goto :goto_1
.end method
