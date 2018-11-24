.class final Lcom/flurry/sdk/fn;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/fm;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/fm;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/sdk/fn;->a:Lcom/flurry/sdk/fm;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fm;B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fn;-><init>(Lcom/flurry/sdk/fm;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/fm;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HttpRequest timed out. Cancelling."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/flurry/sdk/fn;->a:Lcom/flurry/sdk/fm;

    invoke-static {v0}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fm;)Lcom/flurry/sdk/fo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fo;->k()V

    .line 58
    return-void
.end method
