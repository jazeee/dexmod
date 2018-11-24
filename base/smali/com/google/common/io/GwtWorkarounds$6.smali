.class final Lcom/google/common/io/GwtWorkarounds$6;
.super Ljava/lang/Object;
.source "GwtWorkarounds.java"

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharOutput;


# instance fields
.field final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$6;->val$builder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$6;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(C)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$6;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    return-void
.end method
