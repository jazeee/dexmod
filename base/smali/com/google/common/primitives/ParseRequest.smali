.class final Lcom/google/common/primitives/ParseRequest;
.super Ljava/lang/Object;
.source "ParseRequest.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field final radix:I

.field final rawValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/google/common/primitives/ParseRequest;->radix:I

    .line 30
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;
    .locals 4

    .prologue
    const/16 v0, 0x10

    const/4 v3, 0x1

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 41
    const-string v2, "0x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0X"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 55
    :goto_0
    new-instance v1, Lcom/google/common/primitives/ParseRequest;

    invoke-direct {v1, p0, v0}, Lcom/google/common/primitives/ParseRequest;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 44
    :cond_2
    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 47
    :cond_3
    const/16 v0, 0x30

    if-ne v1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 48
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 49
    const/16 v0, 0x8

    goto :goto_0

    .line 52
    :cond_4
    const/16 v0, 0xa

    goto :goto_0
.end method
