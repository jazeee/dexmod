.class final Lcom/flurry/sdk/it;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private synthetic a:Lcom/flurry/sdk/is;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/is;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/flurry/sdk/it;->a:Lcom/flurry/sdk/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/is;B)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/flurry/sdk/it;-><init>(Lcom/flurry/sdk/is;)V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/it;->a:Lcom/flurry/sdk/is;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/is;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/it;->a:Lcom/flurry/sdk/is;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/is;->b(Lcom/flurry/sdk/is;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method
