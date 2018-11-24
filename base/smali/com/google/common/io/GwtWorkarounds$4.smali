.class final Lcom/google/common/io/GwtWorkarounds$4;
.super Ljava/io/OutputStream;
.source "GwtWorkarounds.java"


# instance fields
.field final synthetic val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;


# direct methods
.method constructor <init>(Lcom/google/common/io/GwtWorkarounds$ByteOutput;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->close()V

    .line 169
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->flush()V

    .line 164
    return-void
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->write(B)V

    .line 159
    return-void
.end method
