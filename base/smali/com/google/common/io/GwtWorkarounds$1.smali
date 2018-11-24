.class final Lcom/google/common/io/GwtWorkarounds$1;
.super Ljava/lang/Object;
.source "GwtWorkarounds.java"

# interfaces
.implements Lcom/google/common/io/GwtWorkarounds$CharInput;


# instance fields
.field final synthetic val$reader:Ljava/io/Reader;


# direct methods
.method constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$1;->val$reader:Ljava/io/Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$1;->val$reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 63
    return-void
.end method

.method public final read()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$1;->val$reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    return v0
.end method
