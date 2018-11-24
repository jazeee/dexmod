.class final Lcom/google/common/io/GwtWorkarounds$5;
.super Ljava/lang/Object;
.source "GwtWorkarounds.java"

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharOutput;


# instance fields
.field final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$5;->val$writer:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$5;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 202
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$5;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 197
    return-void
.end method

.method public final write(C)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$5;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 192
    return-void
.end method
