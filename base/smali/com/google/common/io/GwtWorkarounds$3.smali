.class final Lcom/google/common/io/GwtWorkarounds$3;
.super Ljava/io/InputStream;
.source "GwtWorkarounds.java"


# instance fields
.field final synthetic val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;


# direct methods
.method constructor <init>(Lcom/google/common/io/GwtWorkarounds$ByteInput;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$3;->val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$3;->val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->close()V

    .line 136
    return-void
.end method

.method public final read()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$3;->val$input:Lcom/google/common/io/GwtWorkarounds$ByteInput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 113
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    add-int v1, p2, p3

    array-length v2, p1

    invoke-static {p2, v1, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 115
    if-nez p3, :cond_1

    .line 116
    const/4 p3, 0x0

    .line 130
    :cond_0
    :goto_0
    return p3

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/io/GwtWorkarounds$3;->read()I

    move-result v1

    .line 119
    if-ne v1, v0, :cond_2

    move p3, v0

    .line 120
    goto :goto_0

    .line 122
    :cond_2
    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 123
    const/4 v1, 0x1

    :goto_1
    if-ge v1, p3, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/google/common/io/GwtWorkarounds$3;->read()I

    move-result v2

    .line 125
    if-ne v2, v0, :cond_3

    move p3, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_3
    add-int v3, p2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
