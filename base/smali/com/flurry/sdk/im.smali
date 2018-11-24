.class public final Lcom/flurry/sdk/im;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/flurry/sdk/im;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/flurry/sdk/im;

    invoke-direct {v0}, Lcom/flurry/sdk/im;-><init>()V

    sput-object v0, Lcom/flurry/sdk/im;->a:Lcom/flurry/sdk/im;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/in;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/flurry/sdk/im;->a:Lcom/flurry/sdk/im;

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/im;->b(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/in;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/in;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/flurry/sdk/in;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
