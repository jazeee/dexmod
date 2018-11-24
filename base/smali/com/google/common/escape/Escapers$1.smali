.class final Lcom/google/common/escape/Escapers$1;
.super Lcom/google/common/escape/CharEscaper;
.source "Escapers.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/common/escape/CharEscaper;-><init>()V

    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected final escape(C)[C
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
