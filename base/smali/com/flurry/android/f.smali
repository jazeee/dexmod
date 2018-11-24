.class public final enum Lcom/flurry/android/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAST_REBLOG:Lcom/flurry/android/f;

.field public static final enum LIKE:Lcom/flurry/android/f;

.field public static final enum REBLOG:Lcom/flurry/android/f;

.field public static final enum SOURCE_LINK:Lcom/flurry/android/f;

.field private static final synthetic b:[Lcom/flurry/android/f;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/flurry/android/f;

    const-string v1, "REBLOG"

    const-string v2, "Reblog"

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/android/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/f;->REBLOG:Lcom/flurry/android/f;

    .line 23
    new-instance v0, Lcom/flurry/android/f;

    const-string v1, "FAST_REBLOG"

    const-string v2, "FastReblog"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/android/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/f;->FAST_REBLOG:Lcom/flurry/android/f;

    .line 24
    new-instance v0, Lcom/flurry/android/f;

    const-string v1, "SOURCE_LINK"

    const-string v2, "SourceClick"

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/android/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/f;->SOURCE_LINK:Lcom/flurry/android/f;

    .line 25
    new-instance v0, Lcom/flurry/android/f;

    const-string v1, "LIKE"

    const-string v2, "Like"

    invoke-direct {v0, v1, v6, v2}, Lcom/flurry/android/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/android/f;->LIKE:Lcom/flurry/android/f;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/android/f;

    sget-object v1, Lcom/flurry/android/f;->REBLOG:Lcom/flurry/android/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/f;->FAST_REBLOG:Lcom/flurry/android/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/f;->SOURCE_LINK:Lcom/flurry/android/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/f;->LIKE:Lcom/flurry/android/f;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flurry/android/f;->b:[Lcom/flurry/android/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/flurry/android/f;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/f;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/flurry/android/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/f;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/f;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/flurry/android/f;->b:[Lcom/flurry/android/f;

    invoke-virtual {v0}, [Lcom/flurry/android/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/f;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/flurry/android/f;->a:Ljava/lang/String;

    return-object v0
.end method
