.class public final Lcom/flurry/sdk/bn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/flurry/sdk/bn;->a:[B

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/bn;)[B
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/flurry/sdk/bn;->a:[B

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/bn;[B)[B
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/flurry/sdk/bn;->a:[B

    return-object p1
.end method


# virtual methods
.method public final a()[B
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/bn;->a:[B

    return-object v0
.end method
